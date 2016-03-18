require 'rails_helper'

RSpec.describe 'Create a guide community', type: :feature do
  it 'successfully creates a guide community' do
    visit root_path
    click_link "Create a Guide Community"

    publishing_api = double(:publishing_api)
    stub_const("PUBLISHING_API", publishing_api)
    expect(publishing_api).to receive(:put_content)
    expect(publishing_api).to receive(:patch_links)

    fill_in 'Slug', with: '/service-manual/topic-name/design-community'
    fill_in "Description", with: "This acts as a test case"
    fill_in "Title", with: "First Edition Title"
    fill_in "Body", with: "## First Edition Title"
    click_first_button "Save"

    within ".alert" do
      expect(page).to have_content('created')
    end

    # Reload the page to avoid any false positive assertions on
    # the content of the fields
    visit current_path

    expect(page).to have_field('Slug', with: '/service-manual/topic-name/design-community')
    expect(page).to have_field('Description', with: 'This acts as a test case')
    expect(page).to have_field('Title', with: 'First Edition Title')
    expect(page).to have_field('Body', with: '## First Edition Title')
  end

  it 'does not have a content owner field' do
    visit root_path
    click_link "Create a Guide Community"

    expect(page).to_not have_field('Published by')
  end
end
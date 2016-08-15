FactoryGirl.define do
  # Example Usage
  #
  # Create a draft with the title "A Draft Edition"
  # -> create(:edition, :draft, title: "A Draft Edition")
  #
  # Create a published edition suitable for use by a guide community, with
  # the title "A Published Community Edition"
  # -> create(:community_edition, :published, title: "A Published Community Edition")

  states = [:draft, :ready, :review_requested, :published, :unpublished].freeze

  factory :edition do
    sequence :title do |n|
      "#{state} edition #{n}"
    end
    state "draft"
    phase "beta"
    description "Description"
    update_type "major"
    reason_for_change "This is the reason for the change"
    change_note "A summary of the changes in this edition"
    body "Heading"
    version 1
    content_owner { build(:guide_community) }
    author { build(:user) }
    created_by { author }

    # create traits for all states
    states.each do |state|
      trait state do
        state state.to_s
      end
    end
  end

  # community editions do not have a content owner
  factory :community_edition, parent: :edition do
    content_owner nil
    sequence :title do |n|
      "#{n} Community"
    end
  end
end
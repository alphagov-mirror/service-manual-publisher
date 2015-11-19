class InsertSlugMigrations < ActiveRecord::Migration
  def change
    return say("Skipping slug creation in test environment") if Rails.env.test?

    OLD_SLUGS.each do |s|
      execute "INSERT INTO slug_migrations (slug, created_at, updated_at, content_id) VALUES ('#{s}', now(), now(), '#{SecureRandom.uuid}')"
    end
  end

  OLD_SLUGS = [
    "/service-manual/communications/blogs.html",
    "/service-manual/communications/increasing-digital-takeup.html",
    "/service-manual/communications.html",
    "/service-manual/web-ops.html",
    "/service-manual/developers.html",
    "/service-manual/agile/writing-user-stories.html",
    "/service-manual/agile/quality.html",
    "/service-manual/agile/training-and-learning.html",
    "/service-manual/agile/running-retrospectives.html",
    "/service-manual/agile.html",
    "/service-manual/agile/what-agile-looks-like.html",
    "/service-manual/agile/continuous-delivery.html",
    "/service-manual/agile/features-of-agile.html",
    "/service-manual/digital-by-default/awarding-the-standard.html",
    "/service-manual/digital-by-default/self-certification.html",
    "/service-manual/digital-by-default/scope-of-the-standard.html",
    "/service-manual/digital-by-default.html",
    "/service-manual/digital-by-default/assessments-at-gds.html",
    "/service-manual/digital-by-default/failure-to-meet-the-standard.html",
    "/service-manual/digital-by-default/maintaining-the-standard.html",
    "/service-manual/feedback.html",
    "/service-manual/governance/governing-the-discovery-phase.html",
    "/service-manual/governance/seeing-progress.html",
    "/service-manual/governance/introduction-to-governance-for-service-delivery.html",
    "/service-manual/governance/governing-the-beta-phase.html",
    "/service-manual/governance/setting-up-the-right-reporting.html",
    "/service-manual/governance/self-assurance-by-agile-teams.html",
    "/service-manual/governance/governing-the-alpha-phase.html",
    "/service-manual/governance/what-to-expect-from-the-show-and-tell.html",
    "/service-manual/governance/funding-your-digital-service.html",
    "/service-manual/governance/when-to-scale-up.html",
    "/service-manual/governance/governing-the-live-phase.html",
    "/service-manual/governance/scaling-a-service-team.html",
    "/service-manual/governance/governing-a-service-after-scaling-up.html",
    "/service-manual/governance/governance-principles.html",
    "/service-manual/governance/how-delivery-teams-manage-their-work.html",
    "/service-manual/governance/assurance-for-digital-services.html",
    "/service-manual/governance.html",
    "/service-manual/governance/assurance-from-those-outside-the-service-team.html",
    "/service-manual/governance/governance-across-the-life-of-a-service.html",
    "/service-manual/chief-technology-officers.html",
    "/service-manual/measurement/completion-rate.html",
    "/service-manual/measurement/performance-platform.html",
    "/service-manual/measurement/other-kpis.html",
    "/service-manual/measurement/user-satisfaction.html",
    "/service-manual/measurement.html",
    "/service-manual/measurement/using-data.html",
    "/service-manual/measurement/cost-per-transaction.html",
    "/service-manual/measurement/digital-takeup.html",
    "/service-manual/domain-names/how-they-work.html",
    "/service-manual/domain-names/https.html",
    "/service-manual/domain-names/service-subdomain-names.html",
    "/service-manual/domain-names/asset-hosts.html",
    "/service-manual/domain-names/email.html",
    "/service-manual/domain-names.html",
    "/service-manual/domain-names/setting-up.html",
    "/service-manual/the-team/content-designer.html",
    "/service-manual/the-team/working-with-specialists.html",
    "/service-manual/the-team/working-environment.html",
    "/service-manual/the-team/service-manager.html",
    "/service-manual/the-team/recruitment/job-descriptions.html",
    "/service-manual/the-team/recruitment/hub.html",
    "/service-manual/the-team/recruitment/scs-orgdesign.html",
    "/service-manual/the-team/recruitment.html",
    "/service-manual/the-team/recruitment/performance-analyst-jd.html",
    "/service-manual/the-team/accessibility.html",
    "/service-manual/the-team/learning-and-development/service-manager-induction.html",
    "/service-manual/the-team/learning-and-development/open-programme.html",
    "/service-manual/the-team/learning-and-development/foundation-day.html",
    "/service-manual/the-team/learning-and-development.html",
    "/service-manual/the-team/web-operations.html",
    "/service-manual/the-team/developer.html",
    "/service-manual/the-team/user-researcher.html",
    "/service-manual/the-team/designer.html",
    "/service-manual/the-team.html",
    "/service-manual/the-team/digital-leader.html",
    "/service-manual/the-team/delivery-manager.html",
    "/service-manual/browse.html",
    "/service-manual/technology/service-integration.html",
    "/service-manual/technology/architecture.html",
    "/service-manual/technology/security-as-enabler.html",
    "/service-manual/technology/end-user-devices.html",
    "/service-manual/technology/government-as-a-platform.html",
    "/service-manual/technology/code-of-practice.html",
    "/service-manual/technology/spending-controls.html",
    "/service-manual/technology/open-data.html",
    "/service-manual/technology.html",
    "/service-manual/technology/culture-that-supports-change.html",
    "/service-manual/digital-by-default-26-points.html",
    "/service-manual/operations/devops.html",
    "/service-manual/operations/penetration-testing.html",
    "/service-manual/operations/hosting.html",
    "/service-manual/operations/managing-user-support.html",
    "/service-manual/operations/load-and-performance-testing.html",
    "/service-manual/operations/web-operations-stories.html",
    "/service-manual/operations/uptime-and-availability.html",
    "/service-manual/operations/cloud-security.html",
    "/service-manual/operations/service-management.html",
    "/service-manual/operations/monitoring.html",
    "/service-manual/operations.html",
    "/service-manual/operations/helpdesk.html",
    "/service-manual/operations/operating-servicegovuk-subdomains.html",
    "/service-manual/user-researchers.html",
    "/service-manual/user-centred-design/resources/elements.html",
    "/service-manual/user-centred-design/resources/header-footer.html",
    "/service-manual/user-centred-design/resources/sass-repositories.html",
    "/service-manual/user-centred-design/resources/patterns/summary-pages.html",
    "/service-manual/user-centred-design/resources/patterns/alpha-beta.html",
    "/service-manual/user-centred-design/resources/patterns/knowledge-based-authentication.html",
    "/service-manual/user-centred-design/resources/patterns/form-structure.html",
    "/service-manual/user-centred-design/resources/patterns/usernames.html",
    "/service-manual/user-centred-design/resources/patterns/dates.html",
    "/service-manual/user-centred-design/resources/patterns/feedback-pages.html",
    "/service-manual/user-centred-design/resources/patterns/confirmation-pages.html",
    "/service-manual/user-centred-design/resources/patterns/create-user-account.html",
    "/service-manual/user-centred-design/resources/patterns/email-addresses.html",
    "/service-manual/user-centred-design/resources/patterns/gender-and-sex.html",
    "/service-manual/user-centred-design/resources/patterns/create-password.html",
    "/service-manual/user-centred-design/resources/patterns/help-text.html",
    "/service-manual/user-centred-design/resources/patterns/names.html",
    "/service-manual/user-centred-design/resources/patterns/email-confirmation-loop.html",
    "/service-manual/user-centred-design/resources/patterns/national-insurance-number.html",
    "/service-manual/user-centred-design/resources/patterns.html",
    "/service-manual/user-centred-design/resources/patterns/create-username.html",
    "/service-manual/user-centred-design/resources/patterns/progress-indicators.html",
    "/service-manual/user-centred-design/resources/patterns/start-pages.html",
    "/service-manual/user-centred-design/resources/patterns/addresses.html",
    "/service-manual/user-centred-design/resources/shared-asset-libraries.html",
    "/service-manual/user-centred-design/resources/captcha.html",
    "/service-manual/user-centred-design/resources/creating-accessible-PDFs.html",
    "/service-manual/user-centred-design/data-visualisation.html",
    "/service-manual/user-centred-design/how-users-read.html",
    "/service-manual/user-centred-design/card-sorting.html",
    "/service-manual/user-centred-design/choosing-appropriate-formats.html",
    "/service-manual/user-centred-design/accessibility.html",
    "/service-manual/user-centred-design/user-research/user-research-tools.html",
    "/service-manual/user-centred-design/user-research/community-user-groups.html",
    "/service-manual/user-centred-design/user-research/discussion-guides.html",
    "/service-manual/user-centred-design/user-research/accessibility-testing.html",
    "/service-manual/user-centred-design/user-research/multivariate-testing.html",
    "/service-manual/user-centred-design/user-research/user-research-briefs.html",
    "/service-manual/user-centred-design/user-research/expert-review.html",
    "/service-manual/user-centred-design/user-research/same-day-user-testing.html",
    "/service-manual/user-centred-design/user-research/ethnographic-research.html",
    "/service-manual/user-centred-design/user-research/guerrilla-testing.html",
    "/service-manual/user-centred-design/user-research/focus-groups-mini-groups-interviews.html",
    "/service-manual/user-centred-design/user-research/user-research-surveys.html",
    "/service-manual/user-centred-design/user-research/online-research-panels.html",
    "/service-manual/user-centred-design/user-research/sentiment-analysis.html",
    "/service-manual/user-centred-design/user-research/sampling-methodologies.html",
    "/service-manual/user-centred-design/user-research.html",
    "/service-manual/user-centred-design/user-research/survey-design.html",
    "/service-manual/user-centred-design/user-research/online-omnibus-survey.html",
    "/service-manual/user-centred-design/user-research/lab-based-user-testing.html",
    "/service-manual/user-centred-design/user-research/remote-usability.html",
    "/service-manual/user-centred-design/browsers-and-devices.html",
    "/service-manual/user-centred-design/working-with-prototypes.html",
    "/service-manual/user-centred-design/user-needs.html",
    "/service-manual/user-centred-design.html",
    "/service-manual/user-centred-design/user-centred-design-alpha-beta.html",
    "/service-manual/user-centred-design/print-forms.html",
    "/service-manual/user-centred-design/service-user-experience.html",
    "/service-manual/themes.html",
    "/service-manual/phases/live.html",
    "/service-manual/phases/retirement.html",
    "/service-manual/phases/ideal-alphas.html",
    "/service-manual/phases/alpha.html",
    "/service-manual/phases.html",
    "/service-manual/phases/discovery.html",
    "/service-manual/phases/beta.html",
    "/service-manual/cards.html",
    "/service-manual/assisted-digital/assisted-digital-user-research.html",
    "/service-manual/assisted-digital.html",
    "/service-manual/assisted-digital/action-plan.html",
    "/service-manual/performance-analysts.html",
    "/service-manual/start.html",
    "/service-manual/designers.html",
    "/service-manual/making-software/code-testing.html",
    "/service-manual/making-software/apis.html",
    "/service-manual/making-software/logins.html",
    "/service-manual/making-software/dependency-management.html",
    "/service-manual/making-software/open-standards-and-licensing.html",
    "/service-manual/making-software/information-security.html",
    "/service-manual/making-software/cookies.html",
    "/service-manual/making-software/development-environment.html",
    "/service-manual/making-software/exploratory-testing.html",
    "/service-manual/making-software/sandbox-and-staging-servers.html",
    "/service-manual/making-software/release-strategies.html",
    "/service-manual/making-software/choosing-technology.html",
    "/service-manual/making-software/testing-in-agile.html",
    "/service-manual/making-software/deployment.html",
    "/service-manual/making-software/progressive-enhancement.html",
    "/service-manual/making-software/version-control.html",
    "/service-manual/making-software/standalone-apps.html",
    "/service-manual/making-software/analytics-tools.html",
    "/service-manual/making-software.html",
    "/service-manual/making-software/open-source.html",
    "/service-manual/making-software/configuration-management.html",
    "/service-manual/identity-assurance.html",
    "/service-manual/service-managers.html",
    "/service-manual/content-designers/privacy-note-template-for-services.html",
    "/service-manual/content-designers.html",
    "/service-manual/technical-architects.html",
  ]
end

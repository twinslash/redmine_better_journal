require_dependency 'redmine_better_journal/hooks'

require 'redmine_better_journal/better_journal_time_entry_patch'
require 'redmine_better_journal/better_journal_journal_patch'

Rails.configuration.to_prepare do
  TimeEntry.send(:include, BetterJournalTimeEntryPatch)
  Journal.send(:include, BetterJournalJournalPatch)
end

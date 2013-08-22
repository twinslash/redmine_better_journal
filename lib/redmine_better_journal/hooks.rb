module RedmineBetterJournal
  class Hooks < Redmine::Hook::ViewListener
    def controller_issues_edit_after_save(context={ })
      time_entry = context[:time_entry]
      journal = context[:journal]

      time_entry.journal = journal
      time_entry.save
    end
  end
end

module RedmineBetterJournal
  class Hooks < Redmine::Hook::ViewListener

    # display time entry in journal
    render_on :view_issues_history_journal_bottom, :partial => 'better_journal_show_issue_patch'

    # save reference between time_entry and journal
    def controller_issues_edit_after_save(context={ })
      time_entry = context[:time_entry]
      journal = context[:journal]

      time_entry.journal = journal
      time_entry.save
    end

  end
end

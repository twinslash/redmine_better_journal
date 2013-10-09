Deface::Override.new(
  :virtual_path => "issues/show",
  :name => "better_journal_time_entries_list",
  :insert_after => 'div#history',
  :text => "<%= 'Hello World!' %>",
  :disabled => false)

class AddJournalIdToTimeEntry < ActiveRecord::Migration
  def change
    add_column :time_entries, :journal_id, :integer
  end
end

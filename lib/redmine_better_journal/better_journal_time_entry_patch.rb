module BetterJournalTimeEntryPatch
  def self.included(base)
    base.class_eval do
      belongs_to :journal
    end
  end
end

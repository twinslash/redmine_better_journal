module BetterJournalJournalPatch
  def self.included(base)
    base.class_eval do
      has_one :time_entry, dependent: :nullify
    end
  end
end

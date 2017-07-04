class ArchivePetitionsJob < ApplicationJob
  queue_as :high_priority

  def perform
    Petition.find_each do |petition|
      next if petition.archived?

      ArchivePetitionJob.perform_later(petition)
      petition.update_column(:archiving_started_at, Time.current)
    end
  end
end

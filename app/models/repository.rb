class Repository < ApplicationRecord
  after_initialize :validate_repository, unless: :persisted?

  def validate_repository
    if !Repository.where(repo_name: self.repo_name,
                         language: self.language).exists?
      self.save
    end
  end
end

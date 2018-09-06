class Repository < ApplicationRecord
  after_initialize :validate_repository, unless: :persisted?

  validates_presence_of :repo_name, :description

  def validate_repository
    if !Repository.where(repo_name: self.repo_name,
                         language: self.language).exists?
      self.save
    end
  end
end

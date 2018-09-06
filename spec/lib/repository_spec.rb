require "rails_helper"

RSpec.describe Repository, type: :model do
  subject {
    described_class.new(repo_name: "Blabla", description: "Blablabla")
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a repo_name" do
    subject.repo_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a description" do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  it "it cannot be saved when repo name is empty" do
    subject.repo_name = nil
    expect(subject.save).to be_falsey
  end

  it "it cannot be saved when description is empty" do
    subject.description = nil
    expect(subject.save).to be_falsey
  end

  it "it can be saved with valid attributes" do
    expect(subject.save).to be_truthy
  end
end

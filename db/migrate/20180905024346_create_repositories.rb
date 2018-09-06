class CreateRepositories < ActiveRecord::Migration[5.2]
  def self.up
    create_table :repositories do |t|
      t.string :repo_name
      t.string :description
      t.string :language

      t.timestamps
    end
  end
  def self.down
    drop_table :repositories
  end
end

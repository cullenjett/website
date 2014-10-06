class CreateRepos < ActiveRecord::Migration
  def change
    create_table :repos do |t|
      t.string :name
      t.string :commit_message
      t.date :commit_date

      t.timestamps
    end
  end
end

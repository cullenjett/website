class AddDescriptionAndHtmlUrlToRepos < ActiveRecord::Migration
  def change
    add_column :repos, :description, :text
    add_column :repos, :url, :string
  end
end

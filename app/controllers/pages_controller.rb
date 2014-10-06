class PagesController < ApplicationController
  def home
    @repos = Repo.all.order('commit_date DESC')
  end
end

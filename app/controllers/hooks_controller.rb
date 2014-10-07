class HooksController < ApplicationController
  def git_push_callback
    @repo = Repo.find_by(name: params[:repository][:name])
    response = JSON.parse(request.body.read)
    description = response['repository']['description']
    message = response['head_commit']['message']
    date = response['head_commit']['timestamp']
    @repo.update(description: description, commit_message: message, commit_date: date)
    render nothing: true
  end
end

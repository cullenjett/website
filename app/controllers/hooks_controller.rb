class HooksController < ApplicationController
  def git_push_callback
    response = JSON.parse(request.body.read)
    @repo = Repo.find_by(name: response['repository']['name'])

    client = Octokit::Client.new(login: 'cullenjett', password: 'condor88')
    repo = client.repository("cullenjett/#{@repo.name}")
    description = repo.description
    commits = repo.rels[:commits].get.data
    date = commits.first.commit.author.date
    message = commits.first.commit.message

    @repo.update_attribute(description: description)
    @repo.update_attribute(commit_message: message)
    @repo.update_attribute(commit_date: date)

    binding.pry

    render nothing: true
  end
end

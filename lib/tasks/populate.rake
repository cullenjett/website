task 'populate' => :environment do
  client = Octokit::Client.new(login: ENV['github_login'], password: ENV['github_password'])
  user = client.user
  repos = user.rels[:repos].get.data

  repos.each do |repo|
    url = repo.html_url
    description = repo.description
    commits = repo.rels[:commits].get.data
    date = commits.first.commit.author.date
    message = commits.first.commit.message
    Repo.create(name: repo.name, description: description, url: url, commit_message: message, commit_date: date)
  end
end

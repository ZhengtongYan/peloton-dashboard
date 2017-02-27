require 'octokit'

SCHEDULER.every '1h', :first_in => 0 do |job|
  client = Octokit::Client.new()
  my_organization = GITHUB_ORG
  repos = client.organization_repositories(my_organization).map { |repo| repo.name }

  open_pull_requests = repos.inject([]) { |pulls, repo|
    client.pull_requests("#{my_organization}/#{repo}", :state => 'open').each do |pull|
      pulls.push({
        title: pull.title,
        repo: repo,
        updated_at: pull.updated_at.strftime("%b %-d %Y, %l:%m %p"),
        creator: "@" + pull.user.login,
        })
    end
    pulls
  }

  send_event('github_open_pr', { header: "Open Pull Requests", pulls: open_pull_requests.first(4) })
end

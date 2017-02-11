class FakeGithub
  def self.activity
    self
  end

  def self.events
    self
  end

  def self.repository(user_name, repo_name)
    json_object = JSON.generate(
      self.json_for_user_and_repo(user_name, repo_name)
    )

    json_string = JSON.parse(json_object)
    [Hashie::Mash.new(json_string)]
  end

  def self.json_for_user_and_repo(user_name, repo_name)
      {
        "type": "PushEvent",
        "public": true,
        "payload": {
        },
        "repo": {
          "id": 3,
          "name": "#{repo_name}",
          "url": "https://api.github.com/repos/#{repo_name}"
        },
        "actor": {
          "id": 1,
          "login": "#{user_name}",
          "gravatar_id": "",
          "avatar_url": "https://avatars.githubusercontent.com/u/105698?",
          "url": "https://api.github.com/users/#{user_name}"
        },
        "created_at": "2011-09-06T17:26:27Z",
        "id": "12345"
      }
  end
end

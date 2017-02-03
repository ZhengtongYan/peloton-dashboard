#Jenkins server base URL
JENKINS_URI = URI.parse('http://jenkins.db.cs.cmu.edu:8080')

#change to true if Jenkins is using SSL
JENKINS_USING_SSL = false

#credentials of Jenkins user (give these values if the above flag is true)
JENKINS_AUTH = {
    'name' => nil,
    'password' => nil
}

#Coverall URI
COVERALL_URI = URI('https://coveralls.io/github/cmu-db/peloton.json')

#Github
GITHUB_ORG = 'cmu-db'
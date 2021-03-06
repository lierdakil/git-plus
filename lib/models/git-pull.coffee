git = require '../git'
RemoteListView = require '../views/remote-list-view'

gitPull = (repo) ->
  git.cmd
    args: ['remote']
    cwd: repo.getWorkingDirectory()
    stdout: (data) -> new RemoteListView(repo, data, mode: 'pull')

module.exports = gitPull

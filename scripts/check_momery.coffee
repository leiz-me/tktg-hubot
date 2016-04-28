# Description:
#   Allows hubot to run commands using chef/knife.
#

exec = require('child_process').exec

execCommand = (msg, cmd) ->
  exec cmd, (error, stdout, stderr) ->
    msg.send error
    msg.send stdout
    msg.send stderr

module.exports = (robot) ->
 robot.respond /file list/i, (msg) ->
    q = msg.match[1]
    command = 'ls'
    msg.send "Memory usage:"
    execCommand msg, command

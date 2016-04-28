module.exports = (robot) ->
 robot.respond /memory( (.+))?/i, (msg) ->
    q = msg.match[1]
    @exec = require('child_process').exec
    command = "top -b -n 1 "
    if (!!q && q.length > 0)
      command = command + ' | grep "' + q.match(/[^_\W]+/g).join(' ') + '"'

    msg.send "Memory usage:"

    @exec command, (error, stdout, stderr) ->
      msg.send error
      msg.send stdout
      msg.send stderr

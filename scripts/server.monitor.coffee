# Description:
#   Monitors the server the bot is residing at the moment. Returns essential stats.
#
# Commands:
#   hubot server - Returns the essential stats of the server
# hubot server diagnose - Does a diagnosis of the server.
#
# Author:
#   johnthedong

sysstats = require(__dirname+'/../lib/os.js')

module.exports = (robot) ->
  robot.respond /server/i, (msg) ->
    sysstats().then (body) ->
      msg.send body

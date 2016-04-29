/*
  Basic server stat retrieval for hubot. Now you can monitor your server
  via hubot!
  Usage:
  Author: johnthedong
*/

var os = require("os");
function sysstats() {
//craft the return
  var stats = 'The '
    + os.platform()
    + '-based server, '
    + os.hostname()
    + ' has been running for '
    + os.uptime()
    + ' with '
    + (os.totalmem()/1000000000)
    + 'gigabytes of ram free. '
    + 'The load averages (1, 5, 15 minutes) are '
    + os.loadavg().[0] + ', ' + os.loadavg().[1] + ' and ' + os.loadavg().[2]
  return stats;
}

module.exports = sysstats;

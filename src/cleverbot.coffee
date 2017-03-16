# Description:
#   Turns your bot into a snarky little shit
#
# Dependencies:
#   "cleverbot-node": "~0.3"
#
# Configuration:
#   HUBOT_CLEVERBOT_API_KEY
#
# Commands:
#   hubot c <input>
#
# Author:
#   maletor

Cleverbot = require('cleverbot-node')

module.exports = (robot) ->
  cleverbot = new Cleverbot
  cleverbot.configure(botapi: process.env.HUBOT_CLEVERBOT_API_KEY)

  robot.respond /c (.*)/i, (msg) ->
    data = msg.match[1].trim()
    cleverbot.write(data, (response) => msg.send(response.output))

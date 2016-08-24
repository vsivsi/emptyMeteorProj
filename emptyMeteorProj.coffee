############################################################################
#     Copyright (C) 2015-2016 by Vaughn Iverson
#     emptyMeteorProj is free software released under the MIT/X11 license.
#     See included LICENSE file for details.
############################################################################

if Meteor.isClient
  # counter starts at 0
  Session.setDefault 'counter', 0

  Template.hello.helpers
    counter: () ->
      return Session.get 'counter'

  Template.hello.events
    'click button': () ->
      # increment the counter when button is clicked
      Session.set 'counter', Session.get('counter') + 1

if Meteor.isServer

  # Test server-side packages from npm:
  # These can be added using the meteor command, e.g.
  # % meteor npm --save install async

  # fs = require 'fs'
  # async = require 'async'
  # mongodb = require 'mongodb'

  Meteor.startup () ->
    # code to run on server at startup

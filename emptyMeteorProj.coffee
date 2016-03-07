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
  Meteor.startup () ->
    # code to run on server at startup

#= require_self
#= require_tree ./templates 
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.App =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}
  init: ->
  	# App.route = new App.TeamRouter()
  	# Backbone.history.start()

$(document).ready ->
	App.init()
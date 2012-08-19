class App.TeamSideBar extends Backbone.View
	el: '.teams-container'

	events:
		'click .create-team'  : 'createTeam'
		'click .manage-teams' : 'manageTeams'

	template: JST['backbone/templates/team_list']

	initialize: ->
		@collection.on('reset', @addAll, @)
		@collection.on('add', @addAll, @)
		@collection.on('sync', @addAll, @)
		@collection.on('remove', @addAll, @)

	addAll: ->
		@$el.find('ul').html ''
		@collection.sort({silent:true}).forEach(@addOne, @)

	addOne: (model) ->
		data = model.toJSON()
		@$el.find('ul').append @template(data)

	createTeam: (e)->
		e.preventDefault
		new App.CreateTeamView({ collection: @collection })

	manageTeams: (e)->
		e.preventDefault
		new App.ManageTeamsView({ collection: @collection })
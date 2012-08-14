class App.TeamSideBar extends Backbone.View
	el: '#team-nav'

	events:
		'click #show-teams' :	'showTeams'
		'click #new-team'	:	'createTeam' 	

	template: JST['backbone/templates/team_list']

	initialize: ->
		@collection.on('reset', @addAll, @)
		@collection.on('add', @addAll, @)

	addAll: ->
		$('.teams-container').html ''
		$('.teams-container').append '<ul></ul>'
		@collection.forEach(@addOne, @)
		console.log 'wip'

	addOne: (model) ->
		data = model.toJSON()
		$('.teams-container').find('ul').append @template(data)

	showTeams: (e)->
		e.preventDefault() if e
		@addAll()
		console.log 'wop'

	createTeam: (e)->
		e.preventDefault()
		$('.teams-container').html('<h1>Create Team</h1>');
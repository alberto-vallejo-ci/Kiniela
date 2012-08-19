class App.CreateTeamView extends Backbone.View
    el: '#create-team-dialog'

    events:
        'click #cancel-team' : 'cancelTeam'
        'click #create-team' : 'createTeam'

    template: JST['backbone/templates/create_team']

    initialize: ->
        @setDialog()
        @dialogize()

    setDialog: ->
        @$el.html @template

    dialogize: ->
        width = $(window).width() / 3
        $('#create-team-dialog').dialog
            title: 'Create Team'
            width: 400
            resizable: false
            position: [width, 100]
            modal: true
            close: => @undelegateEvents()

    closeDialog: (e) ->
        @undelegateEvents()
        e.preventDefault() if e
        $('#create-team-dialog').dialog('close')

    cancelTeam: (e) ->
        e.preventDefault()
        @closeDialog()

    createTeam: (e) ->
        e.preventDefault
        value = $.trim $('#team_name').val()
        @saveTeam(value) if value.length > 0

    saveTeam: (name) ->
        params =
            name: name
        team = new App.Team params
        team.save()
        @collection.add team
        @closeDialog()


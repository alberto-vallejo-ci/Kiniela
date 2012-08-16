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
        width = $(window).width() / 2
        $('#create-team-dialog').dialog
            title: 'Create Team'
            width: 400
            resizable: false
            position: [width.toString()], 100
            modal: true
            close: => @closeDialog

    closeDialog: (e) ->
        e.preventDefault() if e
        @undelegateEvents()
        $('#create-team-dialog').dialog('close')

    cancelTeam: (e) ->
        e.preventDefault
        @closeDialog(e)

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


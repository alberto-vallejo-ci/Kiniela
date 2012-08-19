class App.ManageTeamView extends Backbone.View
    tagName: 'li'
    className: 'team'

    events:
        'click #edit-team'          : 'editTeam'
        'click #delete-team'        : 'deleteTeam'
        'click #save-edit-team'     : 'saveTeam'
        'click #cancel-edit-team'   : 'cancelEditTeam'

    template: JST['backbone/templates/manage_team']

    render: ->
        @$el.html @template(@model.toJSON())
        @

    editTeam: (e)->
        e.preventDefault()
        @showInputs()

    saveTeam: ()->
        name = @$('input.team-name').val()
        @model.set({name: name})
        @model.save()
        @showInputs()


    deleteTeam: (e) ->
        e.preventDefault()
        @model.destroy()
        App.teams.remove @model

    cancelEditTeam: ->
        name = @model.get 'name'
        $('input.team-name').val("#{name}")
        @showInputs()

    showInputs: ->
        @$('.team-name').toggle()
        @$('#edit-team').toggle()
        @$('#delete-team').toggle()
        @$('#save-edit-team').toggle()
        @$('#cancel-edit-team').toggle()


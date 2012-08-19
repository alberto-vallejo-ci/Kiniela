class App.ManageTeamsView extends Backbone.View
    el: '#manage-teams-dialog'

    template: JST['backbone/templates/manage_teams']

    initialize: ->
        @collection.on('sync', @addAll, @)
        @collection.on('remove', @addAll, @)
        @setDialog()
        @dialogize()
        @addAll()

    setDialog: ->
        @$el.html @template

    dialogize: ->
        width = $(window).width() / 3
        $('#manage-teams-dialog').dialog
            title: 'Manage Teams'
            width: 500
            height: 700
            position: [width, 100]
            resizable: false
            modal: true

    addAll: ->
        @$el.find('ul').html ''
        @collection.sort({ silent: true }).forEach(@addOne, @)

    addOne: (model)->
        team = new App.ManageTeamView (model: model, parent: @)
        @$el.find('ul').append(team.render().el)



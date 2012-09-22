class App.CreateGameView extends Backbone.View
    el: '#create-game-dialog'

    template: JST['backbone/templates/games/create_game']

    initialize: ->
        @setDialog()
        @dialogize()

    setDialog: ->
        @$el.html @template

    dialogize: ->
        width = $(window).width() / 3
        $('#create-game-dialog').dialog
            title: 'Create Game'
            width: 400
            resizable: false
            position: [width, 100]
            modal: true
            close: => @undelegateEvents()
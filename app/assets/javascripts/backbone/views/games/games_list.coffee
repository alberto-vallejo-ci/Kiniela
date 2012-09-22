class App.GamesList extends Backbone.View
    el: '.games-container'

    events:
        'click #create-game' : 'createGame'

    template: JST['backbone/templates/games/games_list']

    initialize: ->
        @addAll()

    addAll: ->
        @$el.find('.games-list').html ''
        @collection.forEach(@addOne, @)

    addOne: (model)->
        game = model.toJSON()
        @$el.find('.games-list').append @template(game)

    createGame: (e)->
        e.preventDefault()
        new App.CreateGameView({collection: @collection})
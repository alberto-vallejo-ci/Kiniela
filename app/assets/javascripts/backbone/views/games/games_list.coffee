class App.GamesList extends Backbone.View
    el: '.games-container'

    template: JST['backbone/templates/games/games_list']

    initialize: ->
        @addAll()

    addAll: ->
        @$el.find('.games-list').html ''
        @collection.forEach(@addOne, @)

    addOne: (model)->
        game = model.toJSON()
        @$el.find('.games-list').append @template(game)
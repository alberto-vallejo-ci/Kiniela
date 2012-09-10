class App.Game extends Backbone.Model
    urlRoot: '/games'

class App.Games extends Backbone.Collection
    url: '/games'
    model: App.Game
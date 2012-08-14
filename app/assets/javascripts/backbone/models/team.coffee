class App.Team extends Backbone.Model
    defaults:
        ids: []

    urlRoot: '/teams/show'


class App.Teams extends Backbone.Collection
    model: App.Team
    url: '/teams/show'

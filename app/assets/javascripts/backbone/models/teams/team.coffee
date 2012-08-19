class App.Team extends Backbone.Model
    defaults:
        name:   ''

    urlRoot: '/teams'


class App.Teams extends Backbone.Collection
    model: App.Team
    url: '/teams'

    comparator: (team) ->
        team.get 'name'

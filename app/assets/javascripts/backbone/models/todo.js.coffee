class TodoApplication.Models.Todo extends Backbone.Model
  paramRoot: 'todo'

  defaults:
    title: ""
    description: ""

class TodoApplication.Collections.TodosCollection extends Backbone.Collection
  model: TodoApplication.Models.Todo
  url: '/todos'

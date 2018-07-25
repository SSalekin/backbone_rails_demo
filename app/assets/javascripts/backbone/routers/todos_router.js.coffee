class TodoApplication.Routers.TodosRouter extends Backbone.Router
  initialize: (options) ->
    @todos = new TodoApplication.Collections.TodosCollection()
    @todos.reset options.todos

  routes:
    "new"      : "newTodo"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newTodo: ->
    @view = new TodoApplication.Views.Todos.NewView(collection: @todos)
    $("#todos").html(@view.render().el)

  index: ->
    @view = new TodoApplication.Views.Todos.IndexView(collection: @todos)
    $("#todos").html(@view.render().el)

  show: (id) ->
    todo = @todos.get(id)

    @view = new TodoApplication.Views.Todos.ShowView(model: todo)
    $("#todos").html(@view.render().el)

  edit: (id) ->
    todo = @todos.get(id)

    @view = new TodoApplication.Views.Todos.EditView(model: todo)
    $("#todos").html(@view.render().el)

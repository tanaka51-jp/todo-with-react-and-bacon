@TodoComponent = React.createClass
  propTypes: ->
    todos: React.PropTypes.array.isRequired

  render: ->
    todoList = @props.todos.map (todo) ->
      `<TodoItem key={todo.id} todoname={todo.name} todoDone={todo.done} />`

    `<ul>{todoList}</ul>`

TodoItem = React.createClass
  propTypes: ->
    todoDone: React.PropTypes.bool.isRequired

  render: ->
    `<li> {this.props.todoDone}</li>`

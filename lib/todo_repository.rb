class TodoRepository
  attr_reader :todos  # key: id, value: todo

  def initialize
    @todos = Hash.new
    @counter = 0
  end

  def add(todo)
    @counter += 1
    @todos.store(@counter, todo)
  end

  def remove(todo_id)
    @todos.delete(todo_id)
  end
end

class Controller
  def initialize
    @repository = TodoRepository.new
    @display = Display.new
  end

  def fetch_and_print_todos
    @display.print_todos(@repository.todos)
  end

  def add_todo
    description = @display.get_new_todo_description
    @repository.add(TodoItem.new(description))
  end

  def remove_todo
    todo_id_to_remove = @display.get_todo_id_to_remove
    @repository.remove(todo_id_to_remove)
  end

  def mark_todo_as_done
    todo_id = @display.gets_todo_id_to_mark_as_done
    todo = @repository.todos[todo_id].mark_as_done
  end
end

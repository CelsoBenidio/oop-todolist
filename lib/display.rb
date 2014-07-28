class Display
  def print_todos(todos)
    todos.each do |id, todo|
      done = todo.done ? "[x]" : "[ ]"
      puts "#{id} - #{done} #{todo.description}"
    end
  end

  def get_new_todo_description
    puts "What do you want to do?"
    return gets.chomp
  end

  def get_todo_id_to_remove
    puts "Which TODO do you want to delete?"
    return gets.chomp.to_i
  end

  def gets_todo_id_to_mark_as_done
    puts "Which todo do you want to mark as done?"
    return gets.chomp.to_i
  end
end

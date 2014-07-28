class InfiniteLoop
  def self.run
    controller = Controller.new
    while true
      clear
      controller.fetch_and_print_todos
      case choose_action
      when 1 then controller.add_todo
      when 2 then controller.mark_todo_as_done
      when 3 then controller.remove_todo
      end
    end
  end

  private

  def self.choose_action
    puts "-------------------------"
    puts "Please choose"
    puts "1 - Add a new todo"
    puts "2 - Mark a todo as done"
    puts "3 - Remove a todo"
    print "> "
    return gets.chomp.to_i
  end

  def self.clear
    print `clear`
  end
end

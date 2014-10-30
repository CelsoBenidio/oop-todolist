require_relative 'controller'

class Router
  def run(repository)
    @controller = Controller.new(repository)
    loop do
      @controller.fetch_and_print_tasks
      print_actions
      action = gets.chomp.to_i
      dispatch(action)
    end
  end

  private

  def print_actions
    puts "\n---"
    puts 'What do you want to do?'
    puts '1 - Add a new task'
    puts '2 - Mark a task as done'
    puts '3 - Remove a task'
    puts '---'
  end

  def dispatch(action)
    case action
    when 1 then @controller.add_task
    when 2 then @controller.mark_task_as_done
    when 3 then @controller.remove_task
    end
  end
end

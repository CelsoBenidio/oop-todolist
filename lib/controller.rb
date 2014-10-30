require_relative 'task'
require_relative 'view'

class Controller
  def initialize(repository)
    @repository = repository
    @view = View.new
  end

  def fetch_and_print_tasks
    @view.print_tasks(@repository.all)
  end

  def add_task
    description = @view.get_new_task_description
    @repository.add(Task.new(description))
  end

  def remove_task
    index = @view.get_task_index_to_remove
    @repository.remove(index)
  end

  def mark_task_as_done
    index = @view.get_task_index_to_mark_as_done
    task = @repository.find(index)
    task.mark_as_done
  end
end

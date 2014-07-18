class Controller
  def initialize
    @interface = Interface.new
    @repository = TaskRepository.new
  end

  def display_tasks
    tasks = @repository.tasks
    @interface.display_tasks(tasks)
  end

  def create_task
    description = @interface.ask_user_for_task_description
    task = Task.new(description)
    @repository.add_task(task)
  end

  def mark_as_done
    index = @interface.ask_user_for_task_id_to_mask_as_done
    task = @repository.find_task(index)
    task.mark_as_done
  end
end
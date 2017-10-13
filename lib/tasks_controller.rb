require_relative 'tasks_view'

class TasksController
  def initialize(repository)
    @repository = repository
    @view = TasksView.new
  end

  def list
    display_tasks
  end

  def create
    # 1. Get description from view
    description = @view.ask_user_for_description
    # 2. Create new task
    task = Task.new(description)
    # 3. Add to repo
    @repository.add(task)
  end

  def mark_as_done
    # 1. Display list with indices
    display_tasks
    # 2. Ask user for index
    index = @view.ask_user_for_index
    # 3. Fetch task from repo
    task = @repository.find(index)
    # 4. Mark task as done
    task.mark_as_done!
  end

  def destroy
    # 1. Display list with indices
    display_tasks
    # 2. Ask user for index
    index = @view.ask_user_for_index
    # 3. Remove from repository
    @repository.remove(index)
  end

  private

  def display_tasks
    # 1. Fetch tasks from repo
    tasks = @repository.all
    # 2. Send them to view for display
    @view.display(tasks)
  end
end

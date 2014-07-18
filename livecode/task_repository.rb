class TaskRepository
  attr_reader :tasks

  def initialize
    @tasks = []
  end

  def add_task(task)
    @tasks << task
  end

  def find_task(index)
    return @tasks[index]
  end

  def remove_task(index)
    @tasks.delete_at(task)
  end
end

require_relative 'lib/router'
require_relative 'lib/task_repository'

repository = TaskRepository.new
Router.new.run(repository)

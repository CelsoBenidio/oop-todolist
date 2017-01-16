require_relative 'lib/tasks_repository'
require_relative 'lib/tasks_controller'
require_relative 'lib/router'

repository = TasksRepository.new
controller = TasksController.new(repository)
router = Router.new(controller)
router.run

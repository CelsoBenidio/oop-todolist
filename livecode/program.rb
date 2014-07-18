require_relative "task"
require_relative "task_repository"
require_relative "interface"
require_relative "controller"

controller = Controller.new

puts "Welcome in the TODO Manager"

while true
  controller.display_tasks
  puts "---------------------------"
  puts "What do you want to do?"
  puts "- Press 1 to create a task"
  puts "- Press 2 to mark a task as done"
  action = gets.chomp.to_i
  if action == 1
    controller.create_task
  elsif action == 2
    controller.mark_as_done
  else
    puts "Press 1 or 2"
  end
end
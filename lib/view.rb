class View
  def print_tasks(tasks)
    tasks.each_with_index do |task, index|
      done = task.done ? '[x]' : '[ ]'
      puts "#{done} #{index + 1} - #{task.description}"
    end
  end

  def get_new_task_description
    puts 'What do you want to do?'
    gets.chomp
  end

  def get_task_index_to_remove
    puts 'Which task do you want to delete?'
    gets.chomp.to_i - 1
  end

  def get_task_index_to_mark_as_done
    puts 'Which task do you want to mark as done?'
    gets.chomp.to_i - 1
  end
end

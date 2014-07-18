class Interface
  def display_tasks(tasks)  # tasks === Array
    tasks.each_with_index do |task, index|
      done = ""
      if task.done
        done = "[x]"
      else
        done = "[ ]"
      end
      puts "#{index} #{done} #{task.description}"
    end
  end

  def ask_user_for_task_description
    puts "Please, add a new task:"
    description = gets.chomp
    return description
  end

  def ask_user_for_task_id_to_mask_as_done
    puts "Which task id do you want to mark as done?"
    index = gets.chomp.to_i
    return index
  end

end
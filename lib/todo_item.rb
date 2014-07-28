class TodoItem
  attr_reader :description, :done

  def initialize(description)
    @description = description
    @done = false
  end

  def mark_as_done
    @done = true
  end
end

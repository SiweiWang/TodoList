class TodoItem < ActiveRecord::Base
  def self.number_of_completed_todos
    if self.nil?
      0
    else
      self.select { |todo| todo.completed? }.count
    end
  end
end

class User < ActiveRecord::Base
  has_one :profile, dependent: :destroy
  has_many :todo_lists, dependent: :destroy
  has_many :todo_items, through: :todo_lists, source: :todo_items

  validates :username, presence: true

  def get_completed_count
    if todo_items.nil?
      return 0
    else
      return todo_items.reject { |i| i.completed != true }.length
    end
  end
end

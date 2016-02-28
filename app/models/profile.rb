class Profile < ActiveRecord::Base
  belongs_to :user

  validate :both_empty
  validate :sue_not_male
  validates :gender, inclusion: { in: %w(male female), message: "%{value} is not a valid gender" }

  default_scope { order birth_year: :asc}

  def both_empty
    if (last_name.nil? and first_name.nil?)
      errors.add(:last_name, "Both first name and last_name are empty")
    end
  end

  def sue_not_male
    if (gender == "male" and first_name == "Sue")
      errors.add(:gender, "Male can not have first name as Sue")
    end
  end

  scope :get_all_profiles, -> (min, max){ where("birth_year BETWEEN ? AND ?", "#{min}", "#{max}")}

end

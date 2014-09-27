class Course < ActiveRecord::Base
  has_many :enrollments
  has_many :students, through: :enrollments, class_name: "User"

  validates :name, :acronym, presence: true, uniqueness: true
end

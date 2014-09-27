class Enrollment < ActiveRecord::Base
  belongs_to :course
  belongs_to :student, class_name: "User"

  validates :course, :student, :student_number, presence: true
end

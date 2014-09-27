class User < ActiveRecord::Base
  belongs_to :responsible, class_name: "User"
  has_many :enrollments
  has_many :courses, through: :enrollments, as: :student

  validates :name, :identity_card, :email, :phone,
                :address, :birth_date, :membership, :responsible, presence: true

  validates :membership, :email, :identity_card, uniqueness: true
end

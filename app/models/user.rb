class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :responsible, class_name: "User"
  has_many :enrollments
  has_many :courses, through: :enrollments, as: :student

  validates :name, :identity_card, :phone,
                :address, :birth_date, :membership, presence: true

  validates :membership, :identity_card, uniqueness: true
end

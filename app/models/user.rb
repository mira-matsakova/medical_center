class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, authentication_keys: [:phone_number]
  validates :full_name, :phone_number, presence: true
  validates :phone_number, uniqueness: true, numericality: { only_integer: true }, length: { is: 9 }

  validates_presence_of :email, if: :email_required?

  def email_required?
    false
  end

  def doctor?
    type == 'Doctor'
  end

  def patient?
    type == 'Patient'
  end
end

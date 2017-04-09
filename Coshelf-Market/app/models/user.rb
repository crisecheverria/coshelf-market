class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, presence: true, length: {maximum: 25}
  validates :last_name, presence: true, length: {maximum: 25}
  validates :username, presence: true, length: {maximum: 25}
  validates :tagline, length: {maximum: 150}
  validates :company_name, length: {maximum: 50}
  validates :job_title, length: {maximum: 50}
end

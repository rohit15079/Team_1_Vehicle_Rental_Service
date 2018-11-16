class Agent < ActiveRecord::Base
  validates :orgName, presence: true, uniqueness: true
  validates :regNo, presence: true, numericality: {only_integer: true}, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :fName, presence: true
  validates :lName, presence: true
  validates :locality, presence: true
  validates :city, presence: true
  validates :pinCode, presence: true, numericality: {only_integer: true}
end

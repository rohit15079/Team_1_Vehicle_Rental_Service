class Agent < ActiveRecord::Base
  validates :orgName, presence: true, uniqueness: true
  validates :regNo, presence: true, numericality: {only_integer: true}, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :fName, presence: true
  validates :lName, presence: true
  validates :locality, presence: true
  validates :city, presence: true
  validates :pinCode, presence: true, numericality: {only_integer: true}
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true

  before_save { self.email = email.downcase }
  before_create :create_remember_token

  def Agent.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def Agent.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

  def create_remember_token
    self.remember_token = Agent.digest(Agent.new_remember_token)
  end

end

require 'digest/sha2'

class Agent < ActiveRecord::Base
  validates_presence_of :name, :email
  validates :password, :confirmation => true
  attr_accessor :password_confirmation
  attr_reader :password

  has_many :events

  validate :password_must_be_present

  def Agent.authenticate(name, password)
    if agent = find_by_name(name)
      if agent.hashed_password == encrypt_password(password, agent.salt)
        agent
      end
    end
  end

  def Agent.encrypt_password( password, salt )
    Digest::SHA2.hexdigest(password + "wibble" + salt )
  end

  def password=(password)
    @password = password
    if password.present?
      generate_salt
      self.hashed_password = self.class.encrypt_password(password, salt)
    end
  end

  private
    
    def password_must_be_present
      errors.add(:password, "Missing password") unless hashed_password.present?
    end  

    def generate_salt
      self.salt = self.object_id.to_s
    end
end

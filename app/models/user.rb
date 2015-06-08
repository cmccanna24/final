class User < ActiveRecord::Base

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end

  def send_password_reset
    generate_token(:password_reset_token)
    self.password_reset_sent_at = Time.zone.now
    save!(:validate => false)
    UserMailer.password_reset(self).deliver
  end

	has_secure_password
	
	has_many :albums
	has_many :reviews

	validates :email, :presence => true, :uniqueness => true
	validates :password, :presence => true
	
end

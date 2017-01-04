class User < ApplicationRecord
    
    #use an active record callback to ensure that all e-mails in db are unique
    before_save {self.email = email.downcase}
    
    ##users need a valid name and e-mail. 
    
    validates :name, presence: true, length: { maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
    
    #secure password machinery
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }

end

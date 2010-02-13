class Person
  include MongoMapper::Document
  devise :authenticatable, :recoverable, :rememberable
  
  # -- Devise Keys --
    key :authenticatable
    key :recoverable
    key :rememberable
    key :remember_me
  # --
  
  key :login, String
  key :encrypted_password, String
  key :password_salt, String
  key :reset_password_token, String
  key :remember_token, String
  timestamps!
  userstamps!
  
  has_many :emails
  
  # validates_presence_of :login
end

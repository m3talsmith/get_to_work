class Person
  include MongoMapper::Document
  devise :authenticatable, :recoverable, :rememberable
  
  key :login, String
  key :encrypted_password, String
  key :password_salt, String
  key :reset_password_token, String
  key :remember_token, String
  timestamps!
  userstamps!
  
  validates_presence_of :login
end

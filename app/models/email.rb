class Email
  include MongoMapper::EmbeddedDocument
  
  key :address
end
Factory.define :person do |person|
  person.login { 'string' }

  person.created_at { Time.now.to_s(:db) }
  person.updated_at { Time.now.to_s(:db) }
end

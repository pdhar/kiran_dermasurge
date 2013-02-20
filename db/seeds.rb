# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#puts 'ROLES'
#YAML.load(ENV['ROLES']).each do |role|
#  Role.find_or_create_by_name({ :name => role }, :without_protection => true)
#  puts 'role: ' << role
#end
#puts 'DEFAULT USERS'
#user = User.create :username => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
#puts 'user: ' << user.username
#user.add_role :admin

#user2 = User.create :username => 'admin', :email => 'admin@example.com', :password => '123456', :password_confirmation => '123456'
#puts 'user: ' << user2.username
#user2.add_role :user

#user3 = User.create :username => 'Second User', :email => 'user2@example.com', :password => 'please', :password_confirmation => 'please'
#puts 'user: ' << user3.username
#user3.add_role :VIP

Chatuser.delete_all()
a = Chatuser.create!(name: "Pranav", description: "a")
Chatuser.create!(name: "Kiran", description: "a")
Chatuser.create!(name: "Chandra", description: "a")
Chatuser.create!(name: "Kapil", description: "a")
Chatuser.create!(name: "kirandermasurge", description: "a")

Chatmessage.delete_all()
Chatmessage.create!(message: "hi1", user_from: "kirandermasurge", chatuser_id: a.id)
Chatmessage.create!(message: "hi2", user_from: "Pranav", chatuser_id: a.id)
Chatmessage.create!(message: "hi3", user_from: "kirandermasurge", chatuser_id: a.id)
Chatmessage.create!(message: "hi4", user_from: "Pranav", chatuser_id: a.id)
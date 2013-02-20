class Chatmessage < ActiveRecord::Base
  attr_accessible :chatuser_id, :message, :user_from
  belongs_to :chatuser
end

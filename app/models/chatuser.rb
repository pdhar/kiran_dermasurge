class Chatuser < ActiveRecord::Base
  attr_accessible :description, :name, :message, :user_from, :email
  has_many :chatmessages
  accepts_nested_attributes_for :chatmessages
end

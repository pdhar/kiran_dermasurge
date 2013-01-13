class Testimonial < ActiveRecord::Base
  attr_accessible :email, :message, :name
  
  validates_presence_of :name, :email, :message
  validates_uniqueness_of :email
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
  validates_length_of :message, :maximum => 500
end

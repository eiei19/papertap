class Inputter < ActiveRecord::Base
  validates :name, presence: true
  validates :fbid, presence: true
  validates :email, uniqueness: true
  validates :email, email: true
  attr_accessor :fb_token
end
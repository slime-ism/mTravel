class Post < ActiveRecord::Base
  acts_as_votable
  validates_presence_of :title, :body
  validates_length_of :title, minimum: 2
  validates_length_of :body, minimum: 20
  belongs_to :user
end

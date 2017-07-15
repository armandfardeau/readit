class User < ApplicationRecord
  has_secure_password
  has_many :stories
  has_many :votes
  has_many :stories_voted_on,
           trough: :votes,
           source: :story
end


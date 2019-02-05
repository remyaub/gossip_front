class Gossip < ApplicationRecord
  belongs_to :author, class_name: 'User'
  validate :title, presence: true
  validate :content, presence: true, length: {minimum:2, maximum:30}
end
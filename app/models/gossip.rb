class Gossip < ApplicationRecord
  belongs_to :author, class_name: 'User'
  validates :title, presence: true
  validates :content, presence: true, length: {minimum:2, maximum:30}
end
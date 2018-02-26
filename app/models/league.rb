class League < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_many :leagues_members
  has_many :users, through: :leagues_members

  validates :name, presence: true, length: { in: 3..30 }
  validates :description, presence: true, length: { in: 5..150 }
end
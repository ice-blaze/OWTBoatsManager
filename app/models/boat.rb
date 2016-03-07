class Boat < ActiveRecord::Base
  has_many :goods, dependent: :destroy
  validates :name, presence: true, uniqueness: true
end

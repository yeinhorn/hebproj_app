class Lesson < ActiveRecord::Base
  has_many :examples, dependent: :destroy
  has_many :words, dependent: :destroy
  validates :name, presence: true
end

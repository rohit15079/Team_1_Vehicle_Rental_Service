class Vehicle < ActiveRecord::Base
  validates :category, presence: true
  validates :cost, presence: true, numericality: {only_integer: true, greater_than: 0}
  validates :manufacturer, presence: true
  validates :model, presence: true
end

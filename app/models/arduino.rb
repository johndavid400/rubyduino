class Arduino < ActiveRecord::Base
  has_many :pins
  accepts_nested_attributes_for :pins
end

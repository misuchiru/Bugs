class Japanrate < ActiveRecord::Base
  scope :rate, -> { order("price2 ASC") }
end

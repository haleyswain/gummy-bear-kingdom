class Bear < ActiveRecord::Base
  validates :name, :presence => true
  validates :cost, :presence => true
  validates :country, :presence => true
  validates :color, :presence => true
  validates :hobby, :presence => true
end

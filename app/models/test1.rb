class Test1 < ActiveRecord::Base
  attr_accessible :dt, :name, :user
  
  def name2
    "Virtual name addition - #{self.name}"
  end
end

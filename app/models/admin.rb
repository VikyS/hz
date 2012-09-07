class Admin < ActiveRecord::Base
  attr_accessible :login, :name, :password, :rights
end

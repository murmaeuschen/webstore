class User < ActiveRecord::Base
  attr_accessible :email, :firstname, :lastname, :password, :region, :role, :username
end

class Contact < ActiveRecord::Base
	attr_accessible :name, :email, :cellphone, :commentaries
end

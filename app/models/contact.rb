class Contact < ActiveRecord::Base
	attr_accessible :name, :email, :subject, :phone, :cellphone, :direction, :commentaries
end

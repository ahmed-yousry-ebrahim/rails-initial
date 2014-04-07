class Role < ActiveRecord::Base
	has_many :users
	
	def translated
	  I18n.t("roles."+self.name)
	end
end

class RegisteredUser < ActiveRecord::Base
	before_save :validar_campos

	def validar_campos
	  logger.debug("aqui se validan los campos")
	end
end

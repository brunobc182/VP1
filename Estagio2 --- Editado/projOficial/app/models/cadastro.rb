class Cadastro < ActiveRecord::Base

	   validates_presence_of :Nome, :presence => true, :message => "é obrigatório"
		 mount_uploader :picture, PictureUploader
		 
end

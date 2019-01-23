require 'gossip'
require 'view'

class  Controller

	def initialize

		@view = View.new


	end


	def create_gossip

		params = @view.create_gossip							#On attribue le hash créé par view.rb avec la méthode create_gossip qui permet de demander
																#à l'utilisateur son nom et l'auteur de son gossip

		gossip = Gossip.new(params.keys[0], params.values[0])    #déclenchée dans le fichier routeur.rb par la méthode perform. 
		gossip.save


	end

	def index_gossips

		gossips = Gossip.all 									#pas besoin de créer d'instance de classe car c'est une méthode de classe
		@view.index_gossips(gossips)							#@view est l'instance créé par défaut lors de la création de l'instance controller

	end

	def destroy



	end



end #fin de classe

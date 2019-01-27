require 'gossip'
require 'controller'

class View

	def create_gossip												#méthode pour qu'un utilisateur puisse créer un gossip en rentrant son prénom et le gossip

		puts "Salut, trop bonne idée de gossiper ptit chef."
		puts"Pour débuter, donne moi ton nom :"
		print ">"

		author = gets.chomp

		puts "Ensuite donne moi ton gossip :"
		print ">"

		content = gets.chomp

		return  gossip = {author => content}							#gossip en forme de hash avec l'auteur et le contenu du gossip

	end


	def index_gossips(gossips)		#méthode pour afficher pour chaque instance contenu dans le tableau créé par la classe gossip son auteur et contenu

		puts""

		gossips.each do |line|

			puts "#{line.author} a dit : #{line.content}"



		end

		puts ""

	end




	def delete_gossip			 #méthode pour obtenir le gossip qu'on veut effacer (ne fonctionne pas)

		puts "Alors comme ça on veut virer des gossips ? Choisi le numéro de ligne que tu veux effacer :"
		print ">"
		line_number = gets.to_i

		Voici

		return line_number		#on récupère le numéro de ligne qu'on devra effacer 


	end





	def choose_gossip

		puts "Parmi cette liste tu peux choisir un gossip à supprimer (écris le mot pour mot) :"
		print ">"
		content_gossip_chosen = gets.chomp

		return content_gossip_chosen

	end






end #fin de classe
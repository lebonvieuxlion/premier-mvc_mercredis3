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


	def index_gossips(gossips)

		gossips.each do |line|

			puts "#{line.author} a dit : #{line.content}"


		end



	end



end #fin de classe
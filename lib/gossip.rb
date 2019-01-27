require 'pry'
require 'csv'

class Gossip

	attr_reader :content, :author

	def initialize(author, content)

		@content = content
		@author = author

	end

	def create_gossip

		gossip = Gossip.new("Jean-Michel Concierge", "Féfé est de Bordeaux") #pour le moment, le contenu du gossip est en dur dans le code. L'utilisateur ne peut pas le changer.
		gossip.save


	end


	def save

		if FileTest.exist?("db/gossip.csv") == false

			puts "Le fichier CSV n'existe pas. Nous allons le créer ensemble"

			CSV.open("db/gossip.csv", "wb") do |csv|

				csv << ["author", "content"]
				csv << [@author, @content]

			end

		else 

			puts "le fichier existe déjà. Nous allons rajouter ton gossip."

			CSV.open("db/gossip.csv", "a") do |csv|

				csv << [@author, @content]

			end

		end


	end


	def self.all

		all_gossips = []

		all_array =  CSV.open("db/gossip.csv", "r").each do |line|

			unless line[0] == "author"

			gossip_provisoire = Gossip.new(line[0], line[1])

			all_gossips << gossip_provisoire

			end

		end

		return  all_gossips												#renvoie un array rempli d'instances qu'on a créé avec Gossip.new
	end




	def self.delete(gossip)

		table = CSV.table("db/gossip.csv")

		table.delete_if do |row|

			row[:content] == gossip

		end

		File.open("db/gossip.csv", "w") do |f|

			f.write(table.to_csv)

		end





	end




end #fin de classe

Binding.pry
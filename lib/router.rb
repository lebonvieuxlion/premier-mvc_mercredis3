require 'controller'

class Router


	def initialize

		@controller = Controller.new		

	end

	def perform																				#méthode perform initié dans le fichier app.rb

		puts "BIENVENUE DANS THE GOSSIP PROJECT"

		while true

      #on affiche le menu
      puts "Tu veux faire quoi BG ?"
      puts "1. Je veux créer un gossip"
      puts "2. Je veux afficher les gossips déjà créés."
      puts "3. Je veux supprimer un gossip."
      puts "4. Je veux quitter l'app"
      params = gets.chomp.to_i #on attend le choix de l'utilisateur

      case params

      	when 1
      	 puts "Tu as choisi de créer un gossip"
      	 @controller.create_gossip

        when 2
          puts "Tu as choisi de voir les gossips petit coquin !"
          @controller.index_gossips

        when 3
          puts "Tu as choisi de supprimer un gossip grand fou. Voici les gossips existant :" #(ne fonctionne pas)
            @controller.delete_gossip

      	when 4
      		puts "A bientôt !"
      		break  #ce "break" permet de sortir de la boucle while. C'est même la seule façon d'en sortir

      	else 
      		puts "Ce choix n'existe pas, merci de réessayer" #la boucle while true permet de revenir alors au début car le user ne rentre pas le bon choix
      end

    end

  end




end #find de classe
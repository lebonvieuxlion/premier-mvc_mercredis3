require 'csv'

array = CSV.read("test.csv") #renvoie un array contenant pour chaque ligne du csv un petit array : [[content_row1, content_row1], [content_row2, content_row2]]

array2 = CSV.parse("1,chocolate\n2,bacon\n3,apple")		#renvoie aussi un array sauf qu'il permet de traduire le string en csv grâce au \n
														#qui permet de signifie la fin d'une ligne

array[0][1]												#renvoie name, en effet on prend le premier élément du array donc la première ligne
														#dans cette première ligne on prend donc le deuxième élément qui est "name"





#table = CSV.read("test.csv", headers: true)				#on lit le fichier en considérant que la première ligne regroupe les headers. On peut donc
														#les utiliser pour appeler les éléments du csv de manière plus précise

#table.class												#On a en fait transformer notre array à deux dimensiosn ou doublement imbriqué en objet
														#CSV::Table => elle permet de mieux manipuler les fichiers CSV


#table[0]['id']											#renvoie le premier élément de la colonne avec le header 'id' => 1							


#table.by_col[0]											#renvoie une copie la première colonne => [1,2,3,4,5]
														#une modification de l'originale sera ave by_col! ou by_row! (on est déjà en row par défaut)




#--------SUPPRIMER UN FICHIER---------------------

csv = CSV.table("test.csv")		#on utilise une forme spécial de read qui crée des header et qui met les header en symbole(?). Il permet aussi d'avoir
								#d'avoir un array d'arrays et donc d'itérer dessus (tout en ayant des headers)
csv.delete_if do |row|

	row[:name] == "bacon"		#pour chaque row on itère en enlevant avec delete_if celui qui correspond à la string proposée

end

File.open("test.csv", "w") do |f|	#on supprime et on réécrit le fichier csv avec la ligne en moins 
	f.write(csv.to_csv)
end
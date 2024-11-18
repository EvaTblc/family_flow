puts "Destroy everything.."
User.destroy_all
Organization.destroy_all
Task.destroy_all

puts "Creating organization.."
organization = Organization.create!(name: "We Are Family!", password: "password123")

puts "Creating users.."
User.create!(email: "evatblc@gmail.com", password: "password123", first_name: "Eva", last_name: "Touboulic", username: "EvaTBLC", phone_number: "06 07 08 09 10", organization: organization)
User.create!(email: "test@gmail.com", password: "password123", first_name: "Benjamin", last_name: "Tabary", username: "Ben", phone_number: "06 07 08 09 10", organization: organization)

puts "Creating tasks.."
# Catégorie : Maison
Task.create!(category: "Maison", title: "Faire la vaisselle", description: "Nettoyer et ranger toute la vaisselle", start: "2024-11-18", end: "2024-11-18", priority: true, status: false, recurrence: "Once")
Task.create!(category: "Maison", title: "Passer l'aspirateur", description: "Nettoyer toutes les pièces de la maison", start: "2024-11-19", end: "2024-11-19", priority: false, status: false, recurrence: "Weekly")
Task.create!(category: "Maison", title: "Arroser les plantes", description: "S'occuper des plantes dans le salon et le balcon", start: "2024-11-20", end: "2024-11-20", priority: false, status: false, recurrence: "Daily")

# Catégorie : Administratif
Task.create!(category: "Administratif", title: "Payer les factures", description: "Régler les factures d'électricité et d'eau", start: "2024-11-21", end: "2024-11-21", priority: true, status: false, recurrence: "Monthly")
Task.create!(category: "Administratif", title: "Envoyer un mail au service client", description: "Résoudre un problème avec une commande en ligne", start: "2024-11-22", end: "2024-11-22", priority: true, status: false, recurrence: "Once")
Task.create!(category: "Administratif", title: "Renouveler la carte d'identité", description: "Prendre rendez-vous à la mairie pour le renouvellement", start: "2024-11-25", end: "2024-11-25", priority: true, status: false, recurrence: "Once")

# Catégorie : Santé
Task.create!(category: "Santé", title: "Prendre un rendez-vous chez le dentiste", description: "Vérifier les disponibilités pour un contrôle", start: "2024-11-26", end: "2024-11-26", priority: true, status: false, recurrence: "Once")
Task.create!(category: "Santé", title: "Faire une séance de yoga", description: "Suivre une vidéo de yoga pour se détendre", start: "2024-11-27", end: "2024-11-27", priority: false, status: false, recurrence: "Weekly")
Task.create!(category: "Santé", title: "Aller courir", description: "Faire un jogging dans le parc", start: "2024-11-28", end: "2024-11-28", priority: false, status: false, recurrence: "Daily")

# Catégorie : Famille
Task.create!(category: "Famille", title: "Appeler maman", description: "Prendre des nouvelles et discuter", start: "2024-11-18", end: "2024-11-18", priority: true, status: false, recurrence: "Once")
Task.create!(category: "Famille", title: "Organiser un déjeuner", description: "Planifier un repas familial pour dimanche", start: "2024-11-23", end: "2024-11-23", priority: true, status: false, recurrence: "Once")
Task.create!(category: "Famille", title: "Aider les enfants avec leurs devoirs", description: "Faire les exercices de mathématiques ensemble", start: "2024-11-19", end: "2024-11-19", priority: true, status: false, recurrence: "Weekly")

# Catégorie : Loisirs
Task.create!(category: "Loisirs", title: "Lire un livre", description: "Continuer le roman en cours", start: "2024-11-20", end: "2024-11-20", priority: false, status: false, recurrence: "Daily")
Task.create!(category: "Loisirs", title: "Regarder un film", description: "Choisir un film et le regarder en soirée", start: "2024-11-24", end: "2024-11-24", priority: false, status: false, recurrence: "Once")
Task.create!(category: "Loisirs", title: "Faire du dessin", description: "Commencer une nouvelle illustration", start: "2024-11-25", end: "2024-11-25", priority: false, status: false, recurrence: "Weekly")

# Catégorie : Quotidien
Task.create!(category: "Quotidien", title: "Préparer le repas", description: "Cuisiner un plat équilibré pour le dîner", start: "2024-11-18", end: "2024-11-18", priority: false, status: false, recurrence: "Daily")
Task.create!(category: "Quotidien", title: "Faire les courses", description: "Acheter des fruits, légumes et du lait", start: "2024-11-19", end: "2024-11-19", priority: true, status: false, recurrence: "Weekly")
Task.create!(category: "Quotidien", title: "Sortir les poubelles", description: "Déposer les sacs à la benne", start: "2024-11-18", end: "2024-11-18", priority: false, status: false, recurrence: "Daily")

# Catégorie : Autres
Task.create!(category: "Autres", title: "Planifier un voyage", description: "Chercher des destinations et comparer les prix", start: "2024-11-26", end: "2024-11-26", priority: true, status: false, recurrence: "Once")
Task.create!(category: "Autres", title: "Écrire dans le journal", description: "Noter les événements marquants de la journée", start: "2024-11-20", end: "2024-11-20", priority: false, status: false, recurrence: "Daily")
Task.create!(category: "Autres", title: "Ranger le garage", description: "Trier les outils et jeter les objets inutiles", start: "2024-11-30", end: "2024-11-30", priority: true, status: false, recurrence: "Once")


puts "Seeds created!"

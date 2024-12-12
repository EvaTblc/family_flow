puts "Destroy everything.."
Task.destroy_all
Message.destroy_all
Organization.destroy_all
User.destroy_all

# puts "Creating organization.."
# organization = Organization.create!(name: "We Are Family!")

puts "Creating users.."
User.create!(email: "evatblc@gmail.com", password: "password123", first_name: "Eva", last_name: "Touboulic", username: "EvaTBLC", phone_number: "06 07 08 09 10")
# User.create!(email: "test@gmail.com", password: "password123", first_name: "Benjamin", last_name: "Tabary", username: "Ben", phone_number: "06 07 08 09 10", organization: organization)

# puts "Creating tasks.."
# # Catégorie : Maison
# Task.create!(category: "Maison", title: "Faire la vaisselle", description: "Nettoyer et ranger toute la vaisselle", start: "2024-11-18", end: "2024-11-18", priority: true, status: false, recurrence: "Once", user: User.all.sample)
# Task.create!(category: "Maison", title: "Passer l'aspirateur", description: "Nettoyer toutes les pièces de la maison", start: "2024-11-17", end: "2024-11-17", priority: false, status: false, recurrence: "Weekly", user: User.all.sample)
# Task.create!(category: "Maison", title: "Arroser les plantes", description: "S'occuper des plantes dans le salon et le balcon", start: "2024-11-16", end: "2024-11-16", priority: false, status: false, recurrence: "Daily", user: User.all.sample)

# # Catégorie : Administratif
# Task.create!(category: "Administratif", title: "Payer les factures", description: "Régler les factures d'électricité et d'eau", start: "2024-11-15", end: "2024-11-15", priority: true, status: false, recurrence: "Monthly", user: User.all.sample)
# Task.create!(category: "Administratif", title: "Envoyer un mail au service client", description: "Résoudre un problème avec une commande en ligne", start: "2024-11-14", end: "2024-11-14", priority: true, status: false, recurrence: "Once", user: User.all.sample)
# Task.create!(category: "Administratif", title: "Renouveler la carte d'identité", description: "Prendre rendez-vous à la mairie pour le renouvellement", start: "2024-11-13", end: "2024-11-13", priority: true, status: false, recurrence: "Once", user: User.all.sample)

# # Catégorie : Santé
# Task.create!(category: "Santé", title: "Prendre un rendez-vous chez le dentiste", description: "Vérifier les disponibilités pour un contrôle", start: "2024-11-12", end: "2024-11-12", priority: true, status: false, recurrence: "Once", user: User.all.sample)
# Task.create!(category: "Santé", title: "Faire une séance de yoga", description: "Suivre une vidéo de yoga pour se détendre", start: "2024-11-11", end: "2024-11-11", priority: false, status: false, recurrence: "Weekly", user: User.all.sample)
# Task.create!(category: "Santé", title: "Aller courir", description: "Faire un jogging dans le parc", start: "2024-11-10", end: "2024-11-10", priority: false, status: false, recurrence: "Daily", user: User.all.sample)

# # Catégorie : Famille
# Task.create!(category: "Famille", title: "Appeler maman", description: "Prendre des nouvelles et discuter", start: "2024-11-09", end: "2024-11-09", priority: true, status: false, recurrence: "Once", user: User.all.sample)
# Task.create!(category: "Famille", title: "Organiser un déjeuner", description: "Planifier un repas familial pour dimanche", start: "2024-11-08", end: "2024-11-08", priority: true, status: false, recurrence: "Once", user: User.all.sample)
# Task.create!(category: "Famille", title: "Aider les enfants avec leurs devoirs", description: "Faire les exercices de mathématiques ensemble", start: "2024-11-07", end: "2024-11-07", priority: true, status: false, recurrence: "Weekly", user: User.all.sample)

# # Catégorie : Loisirs
# Task.create!(category: "Loisirs", title: "Lire un livre", description: "Continuer le roman en cours", start: "2024-11-06", end: "2024-11-06", priority: false, status: false, recurrence: "Daily", user: User.all.sample)
# Task.create!(category: "Loisirs", title: "Regarder un film", description: "Choisir un film et le regarder en soirée", start: "2024-11-05", end: "2024-11-05", priority: false, status: false, recurrence: "Once", user: User.all.sample)
# Task.create!(category: "Loisirs", title: "Faire du dessin", description: "Commencer une nouvelle illustration", start: "2024-11-04", end: "2024-11-04", priority: false, status: false, recurrence: "Weekly", user: User.all.sample)

# # Catégorie : Quotidien
# Task.create!(category: "Quotidien", title: "Préparer le repas", description: "Cuisiner un plat équilibré pour le dîner", start: "2024-11-03", end: "2024-11-03", priority: false, status: false, recurrence: "Daily", user: User.all.sample)
# Task.create!(category: "Quotidien", title: "Faire les courses", description: "Acheter des fruits, légumes et du lait", start: "2024-11-02", end: "2024-11-02", priority: true, status: false, recurrence: "Weekly", user: User.all.sample)
# Task.create!(category: "Quotidien", title: "Sortir les poubelles", description: "Déposer les sacs à la benne", start: "2024-11-01", end: "2024-11-01", priority: false, status: false, recurrence: "Daily", user: User.all.sample)

# # Catégorie : Autres
# Task.create!(category: "Autres", title: "Planifier un voyage", description: "Chercher des destinations et comparer les prix", start: "2024-10-31", end: "2024-10-31", priority: true, status: false, recurrence: "Once", user: User.all.sample)
# Task.create!(category: "Autres", title: "Écrire dans le journal", description: "Noter les événements marquants de la journée", start: "2024-10-30", end: "2024-10-30", priority: false, status: false, recurrence: "Daily", user: User.all.sample)
# Task.create!(category: "Autres", title: "Ranger le garage", description: "Trier les outils et jeter les objets inutiles", start: "2024-10-29", end: "2024-10-29", priority: true, status: false, recurrence: "Once", user: User.all.sample)

puts "Seeds created!"

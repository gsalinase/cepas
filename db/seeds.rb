# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Strain
Strain.create(name: 'Merlot')
Strain.create(name: 'Chardonay')
Strain.create(name: 'Pinot Noir')
# Wine
Wine.create(name: 'La Chascona')
# Assembly
Assembly.create(wine_id: 1, strain_id: 1, percentage: 40.0)
Assembly.create(wine_id: 1, strain_id: 2, percentage: 30.0)
Assembly.create(wine_id: 1, strain_id: 3, percentage: 30.0)
# Enologist
Enologist.create(name: 'Pepito')
# Rating
Rating.create(enologist_id: 1, wine_id: 1, score: 96.34)
# Magazine
Magazine.create(name: 'Vive Vino')
# Position
Position.create(name: 'Editor')
Position.create(name: 'Writer')
Position.create(name: 'Reviewer')
# Contract
Contract.create(enologist_id: 1, magazine_id: 1, position_id: 3)
Contract.create(enologist_id: 1, magazine_id: 1, position_id: 2)

# User
User.create(email: 'peter@gmail.com', password: '123456', admin: true)
User.create(email: 'carlitos@gmail.com', password: '123456', admin: false)

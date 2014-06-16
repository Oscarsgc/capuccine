# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([{name: "Hidratacion"},{name: "Anti Edad Global"}, {name: "Anti Arrugas"}, {name: "Lifting-Firmeza"},
			 {name: "Anti Manchas"}, {name: "Nutricion"}, {name: "Luminosidad-Vitalidad"}, {name: "Piel Grasa"},
			  {name: "Piel Impura"}, {name: "Piel Sensible"}, {name: "Facial Universo Options"}, {name: "Corporal Perfect Forms"},
			  {name: "Maquillaje Solar"}, {name: "Proteccion Global"}, {name: "Hidratacion-M"}, {name: "Anti-Edad"}, {name: "Anti-Fatiga"},
			  {name: "En Cabina-M"}, {name: "Sperience Naturae"}, {name: "Sperience Delicatessen"}, {name: "Sperience Privilege"}])

	administrador = User.new
	administrador.username = 'germain_capuccine'
	administrador.email = 'administrador administrador'
	administrador.password = '$aTbRsXrT$'
	administrador.save!



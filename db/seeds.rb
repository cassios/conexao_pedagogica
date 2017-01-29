# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "cassios", password: "cassios", isAdmin: true, email: "cassios")

Discipline.create(name: "Matemática")
Discipline.create(name: "Física")
Discipline.create(name: "Artes")
Discipline.create(name: "Filosofia")
Discipline.create(name: "Geografia")
Discipline.create(name: "Biologia")
Discipline.create(name: "História")

disciplines = Discipline.all


user_id = User.first.id
#PedagogyInnovation.create(title: "Métodos de ensino", description: "bla bla", achievements: "várias crianças já aprenderam a programar", user_id: user_id, latitude: -19.931696, longitude: -43.9521707, discipline: disciplines.sample)
#PedagogyInnovation.create(title: "Métodos de ensino", description: "bla bla", achievements: "várias crianças já aprenderam a programar", user_id: user_id, latitude: -19.932535, longitude: -43.940189, discipline: disciplines.sample) #isahendrix
#PedagogyInnovation.create(title: "Métodos de ensino", description: "bla bla", achievements: "várias crianças já aprenderam a programar", user_id: user_id, latitude: -19.936225, longitude: -43.930422, discipline: disciplines.sample) #sagrado coracao de jesus
#PedagogyInnovation.create(title: "Métodos de ensino", description: "bla bla", achievements: "várias crianças já aprenderam a programar", user_id: user_id, latitude: -19.932876, longitude: -43.932289, discipline: disciplines.sample) #ead
#PedagogyInnovation.create(title: "Métodos de ensino", description: "bla bla", achievements: "várias crianças já aprenderam a programar", user_id: user_id, latitude: -19.869157, longitude: -43.964745, discipline: disciplines.sample) #icex

real_coords = [
{lat: -19.931696, lng: -43.9521707}, {lat: -19.932535, lng: -43.940189,}, {lat: -19.936225, lng: -43.930422}, {lat: -19.932876, lng: -43.932289}, {lat: -19.869157, lng: -43.964745}
]

real_coords.each do |coord|
	PedagogyInnovation.create(title: "Métodos de ensino", description: "bla bla", achievements: "várias crianças já aprenderam a programar", user_id: user_id, latitude: coord[:lat], longitude: coord[:lng], discipline: disciplines.sample)
end

fake_coords = [
{lat: -19.923275, lng: -43.944115}, {lat: -19.922559, lng: -43.943922}, {lat: -19.934532, lng: -43.943278}, 
 {lat: -19.935046, lng: -43.943814}, {lat: -19.937245, lng: -43.946861}, {lat: -19.937800, lng: -43.950659}, 
 {lat: -19.936166, lng: -43.952064}, {lat: -19.934855, lng: -43.954167}, {lat: -19.933171, lng: -43.956227}, 
 {lat: -19.931355, lng: -43.957439}, {lat: -19.928692, lng: -43.954692}, {lat: -19.926826, lng: -43.958769}, 
 {lat: -19.924960, lng: -43.963061}, {lat: -19.923165, lng: -43.967320}, {lat: -19.920603, lng: -43.971290}, 
 {lat: -19.876708, lng: -43.984017}, {lat: -19.876708, lng: -43.984017}, {lat: -19.872069, lng: -43.986833}, 
 {lat: -19.870573, lng: -43.971343}, {lat: -19.870533, lng: -43.966976}, {lat: -19.869262, lng: -43.965345}, 
 {lat: -19.910780, lng: -43.932879}, {lat: -19.867627, lng: -43.963575}, {lat: -19.868121, lng: -43.960850}, 
 {lat: -19.869026, lng: -43.964330}, {lat: -19.870842, lng: -43.962345}, {lat: -19.872376, lng: -43.959373}, 
 {lat: -19.875675, lng: -43.961905}, {lat: -19.876169, lng: -43.969426}, {lat: -19.865786, lng: -43.916066}, 
 {lat: -19.868874, lng: -43.916978}, {lat: -19.872012, lng: -43.918094}, {lat: -19.875120, lng: -43.919553}, 
 {lat: -19.911648, lng: -43.926915}, {lat: -19.913232, lng: -43.927140}, {lat: -19.915360, lng: -43.926947}, 
 {lat: -19.913958, lng: -43.929897}, {lat: -19.911345, lng: -43.932536}]

fake_coords.each do |coord|
	PedagogyInnovation.create(title: "Métodos de ensino", description: "bla bla", achievements: "várias crianças já aprenderam a programar", user_id: user_id, latitude: coord[:lat], longitude: coord[:lng], discipline: disciplines.sample)
end
admin = User.new
admin.name = 'Carlos'
admin.email = 'carlosj.arrieta@gmail.com'
admin.password = 'openwin1976'
admin.password_confirmation = 'openwin1976'
admin.admin = true
admin.save

user = User.new
user.name = 'Tati'
user.email = 'tataguti27@gmail.com'
user.password = '12345678'
user.password_confirmation = '12345678'
user.save

Area.create([
  { name: 'Gerencia' },
  { name: 'Talento humano' },
  { name: 'Tecnología' },
  { name: 'Administrativa' },
  { name: 'Innovación' },
  ])

 10.times do |i|
  p = Persona.new
  p.name = "Persona name #{i}"
  p.surname = "Persona surname #{i}"
  p.nit = "Persona nit #{i}"
  p.phone = "Persona phone #{i}"
  p.area_id = 2
  p.save
end

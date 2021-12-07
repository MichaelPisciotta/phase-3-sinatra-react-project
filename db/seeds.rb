puts "🌱 Seeding spices..."

kev = Student.create(name: "kev", grade: 10)
Note.create(name:"kev note", description: "first note", student_id: kev.id)

kev.notes.create(name: "second note", description: "another note")

puts "✅ Done seeding!"

puts "🌱 Seeding spices..."

kev = Student.create(name: "kevin Perez")
Note.create(title:"kevin's note", description: "first note", student_id: kev.id)

kev.notes.create(title: "kevin's second note", description: "kevin's second note")

puts "✅ Done seeding!"

puts "🌱 Seeding spices..."

kev = Student.create(name: "kevin Perez", image_url: "https://images.unsplash.com/photo-1567168539593-59673ababaae?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80")
Note.create(title:"kevin's note", description: "first note", student_id: kev.id)

kev.notes.create(title: "kevin's second note", description: "kevin's second note")

puts "✅ Done seeding!"

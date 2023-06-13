puts "Cleaning database..."
Gallery.delete_all
Event.delete_all
Photo.delete_all

puts "Creating users..."
# users
user1 = User.create(email: "ayub@gmail.com", password: "123456")
user2 = User.create(email: "elisa@gmail.com", password: "123456")
user3 = User.create(email: "shuqi@gmail.com", password: "123456")
user4 = User.create(email: "lucile@gmail.com", password: "123456")

puts "Creating galleries..."
# galleries
gallery1 = Gallery.create(user_id: user1.id, name: "Landscapes")
gallery2 = Gallery.create(user_id: user1.id, name: "Urban")
gallery3 = Gallery.create(user_id: user2.id, name: "Landscapes")
gallery4 = Gallery.create(user_id: user2.id, name: "Urban")
gallery5 = Gallery.create(user_id: user3.id, name: "Landscapes")
gallery6 = Gallery.create(user_id: user3.id, name: "Urban")
gallery7 = Gallery.create(user_id: user4.id, name: "Landscapes")
gallery8 = Gallery.create(user_id: user4.id, name: "Urban")

puts "Creating photos..."
# photos
Photo.create(address: "London", keyword: "nature", likes: 0, gallery_id: gallery1.id)
Photo.create(address: "London", keyword: "nature", likes: 0, gallery_id: gallery1.id)
Photo.create(address: "London", keyword: "nature", likes: 0, gallery_id: gallery2.id)
Photo.create(address: "London", keyword: "nature", likes: 0, gallery_id: gallery2.id)
Photo.create(address: "London", keyword: "nature", likes: 0, gallery_id: gallery3.id)
Photo.create(address: "London", keyword: "nature", likes: 0, gallery_id: gallery3.id)
Photo.create(address: "London", keyword: "nature", likes: 0, gallery_id: gallery4.id)
Photo.create(address: "London", keyword: "nature", likes: 0, gallery_id: gallery4.id)
Photo.create(address: "London", keyword: "nature", likes: 0, gallery_id: gallery5.id)
Photo.create(address: "London", keyword: "nature", likes: 0, gallery_id: gallery5.id)
Photo.create(address: "London", keyword: "nature", likes: 0, gallery_id: gallery6.id)
Photo.create(address: "London", keyword: "nature", likes: 0, gallery_id: gallery6.id)
Photo.create(address: "London", keyword: "nature", likes: 0, gallery_id: gallery7.id)
Photo.create(address: "London", keyword: "nature", likes: 0, gallery_id: gallery7.id)
Photo.create(address: "London", keyword: "nature", likes: 0, gallery_id: gallery8.id)
Photo.create(address: "London", keyword: "nature", likes: 0, gallery_id: gallery8.id)

# !! need to add image link but be careful with cloudinary?!

puts "Creating events..."
# events
event1 = Event.create(title: "Photo shoot!", address: "Paris", date: '01/01/2024', description: "A great description of the event", user_id: user1.id)
event2 = Event.create(title: "Lake sunset", address: "London", date: '12/12/2023', description: "A great description of the event", user_id: user2.id)
event3 = Event.create(title: "Mountain shoot", address: "Roma", date: '07/07/2023', description: "A great description of the event", user_id: user3.id)
event4 = Event.create(title: "Urban vibe", address: "New York", date: '10/10/2023', description: "A great description of the event", user_id: user4.id)

puts "Creating bookings..."
# bookings
Booking.create(event_id: event1.id, user_id: user2.id)
Booking.create(event_id: event2.id, user_id: user3.id)
Booking.create(event_id: event3.id, user_id: user4.id)
Booking.create(event_id: event4.id, user_id: user1.id)

puts "Seeding complete!"

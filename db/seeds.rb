require "open-uri"

puts "Cleaning database..."
Photo.delete_all
puts "."
Gallery.delete_all
puts "."
Booking.delete_all
puts "."
Event.delete_all
puts "."
User.delete_all
puts "."

puts "Creating users..."
# users
user1 = User.create!(email: "ayub@gmail.com", password: "123456", username: 'ayub')
user2 = User.create!(email: "elisa@gmail.com", password: "123456", username: 'elisa')
user3 = User.create!(email: "shuqi@gmail.com", password: "123456", username: 'shuqi')
user4 = User.create!(email: "lucile@gmail.com", password: "123456", username: 'lucile')

puts "Creating galleries..."
# galleries
gallery1 = Gallery.create!(user_id: user1.id, name: "Landscapes")
gallery2 = Gallery.create!(user_id: user1.id, name: "Urban")
gallery3 = Gallery.create!(user_id: user2.id, name: "Landscapes")
gallery4 = Gallery.create!(user_id: user2.id, name: "Urban")
gallery5 = Gallery.create!(user_id: user3.id, name: "Landscapes")
gallery6 = Gallery.create!(user_id: user3.id, name: "Urban")
gallery7 = Gallery.create!(user_id: user4.id, name: "Landscapes")
gallery8 = Gallery.create!(user_id: user4.id, name: "Urban")

puts "Creating photos..."
# photos
file1 = URI.open("https://source.unsplash.com/random/?city")
file2 = URI.open("https://source.unsplash.com/random/?night")
file3 = URI.open("https://source.unsplash.com/random/?urban")
file4 = URI.open("https://source.unsplash.com/random/?morning")
file5 = URI.open("https://source.unsplash.com/random/?sun")
file6 = URI.open("https://source.unsplash.com/random/?landscape")
file7 = URI.open("https://source.unsplash.com/random/?sea")
file8 = URI.open("https://source.unsplash.com/random/?people")
file9 = URI.open("https://source.unsplash.com/random/?smile")
file10 = URI.open("https://source.unsplash.com/random/?beauty")
file11 = URI.open("https://source.unsplash.com/random/?tree")
file12 = URI.open("https://source.unsplash.com/random/?flower")
file13 = URI.open("https://source.unsplash.com/random/?hope")
file14 = URI.open("https://source.unsplash.com/random/?sleep")
file15 = URI.open("https://source.unsplash.com/random/?house")
file16 = URI.open("https://source.unsplash.com/random/?vacation")

photo1 = Photo.new(address: "London", keyword: "nature", likes: 0, gallery_id: gallery1.id)
photo1.photo.attach(io: file1, filename: "nes.png", content_type: "image/png")
photo1.save
photo2 = Photo.new(address: "London", keyword: "urban", likes: 0, gallery_id: gallery1.id)
photo2.photo.attach(io: file2, filename: "nes.png", content_type: "image/png")
photo2.save
photo3 = Photo.new(address: "London", keyword: "nature", likes: 0, gallery_id: gallery2.id)
photo3.photo.attach(io: file3, filename: "nes.png", content_type: "image/png")
photo3.save
photo4 = Photo.new(address: "London", keyword: "urban", likes: 0, gallery_id: gallery2.id)
photo4.photo.attach(io: file4, filename: "nes.png", content_type: "image/png")
photo4.save
photo5 = Photo.new(address: "London", keyword: "summer", likes: 0, gallery_id: gallery3.id)
photo5.photo.attach(io: file5, filename: "nes.png", content_type: "image/png")
photo5.save
photo6 = Photo.new(address: "London", keyword: "sun", likes: 0, gallery_id: gallery3.id)
photo6.photo.attach(io: file6, filename: "nes.png", content_type: "image/png")
photo6.save
photo7 = Photo.new(address: "London", keyword: "summer", likes: 0, gallery_id: gallery4.id)
photo7.photo.attach(io: file7, filename: "nes.png", content_type: "image/png")
photo7.save
photo8 = Photo.new(address: "London", keyword: "sun", likes: 0, gallery_id: gallery4.id)
photo8.photo.attach(io: file8, filename: "nes.png", content_type: "image/png")
photo8.save
photo9 = Photo.new(address: "London", keyword: "love", likes: 0, gallery_id: gallery5.id)
photo9.photo.attach(io: file9, filename: "nes.png", content_type: "image/png")
photo9.save
photo10 = Photo.new(address: "London", keyword: "art", likes: 0, gallery_id: gallery5.id)
photo10.photo.attach(io: file10, filename: "nes.png", content_type: "image/png")
photo10.save
photo11 = Photo.new(address: "London", keyword: "love", likes: 0, gallery_id: gallery6.id)
photo11.photo.attach(io: file11, filename: "nes.png", content_type: "image/png")
photo11.save
photo12 = Photo.new(address: "London", keyword: "art", likes: 0, gallery_id: gallery6.id)
photo12.photo.attach(io: file12, filename: "nes.png", content_type: "image/png")
photo12.save
photo13 = Photo.new(address: "London", keyword: "lisa", likes: 0, gallery_id: gallery7.id)
photo13.photo.attach(io: file13, filename: "nes.png", content_type: "image/png")
photo13.save
photo14 = Photo.new(address: "London", keyword: "ub", likes: 0, gallery_id: gallery7.id)
photo14.photo.attach(io: file14, filename: "nes.png", content_type: "image/png")
photo14.save
photo15 = Photo.new(address: "London", keyword: "shu", likes: 0, gallery_id: gallery8.id)
photo15.photo.attach(io: file15, filename: "nes.png", content_type: "image/png")
photo15.save
photo16 = Photo.new(address: "London", keyword: "luc", likes: 0, gallery_id: gallery8.id)
photo16.photo.attach(io: file16, filename: "nes.png", content_type: "image/png")
photo16.save

puts "Creating events..."

# event images
@event_forest_img1 = URI.open("https://www.newforestnpa.gov.uk/app/uploads/2018/02/Heathland-by-Nick-Lucas-1920x720.jpg")
@event_forest_img2 = URI.open("https://www.newforestnpa.gov.uk/app/uploads/2017/10/geology-2-1920x720.jpg")
@event_forest_img3 = URI.open("https://www.newforestnpa.gov.uk/app/uploads/2018/02/homepage-1920x720.jpg")
@event_architecture_img1 = URI.open("https://static.trip101.com/paragraph_media/pictures/002/644/817/large/1200px-DZ_Bank_building_in_Berlin___interior.jpg?1661247580")
@event_architecture_img2 = URI.open("https://thelandscapephotoguy.com/wp-content/uploads/2020/02/berlin-biker-1024x576.jpg")
@event_architecture_img3 = URI.open("https://thelandscapephotoguy.com/wp-content/uploads/2020/02/berlin-biker-1024x576.jpg")
@event_portrait_img1 = URI.open("https://images.unsplash.com/photo-1506863530036-1efeddceb993?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cG9ydHJhaXR8fHx8fHwxNjg2NzM5OTQ0&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080")
@event_portrait_img2 = URI.open("https://source.unsplash.com/random/?portrait")
@event_portrait_img3 = URI.open("https://source.unsplash.com/random/?portrait")
@event_night_img1 = URI.open("https://images.unsplash.com/photo-1498036882173-b41c28a8ba34?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8bmlnaHR8fHx8fHwxNjg2NzQwMTAx&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080")
@event_night_img2 = URI.open("https://images.unsplash.com/photo-1519681393784-d120267933ba?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8bmlnaHR8fHx8fHwxNjg2NzQwMTYz&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080")
@event_night_img3 = URI.open("https://images.unsplash.com/photo-1504493408076-2017927bbb1a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8bmlnaHR8fHx8fHwxNjg2NzQwMjE0&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080")


# events
event1 = Event.create!(title: "Photo shoot!", address: "Paris", date: '01/01/2024', description: "A great description of the event", user_id: user1.id)
event2 = Event.create!(title: "Lake sunset", address: "London", date: '12/12/2023', description: "A great description of the event", user_id: user2.id)
event3 = Event.create!(title: "Mountain shoot", address: "Roma", date: '07/07/2023', description: "A great description of the event", user_id: user3.id)
event4 = Event.create!(title: "Urban vibe", address: "New York", date: '10/10/2023', description: "A great description of the event", user_id: user4.id)

# attach images to events
event1.images.attach(io: @event_forest_img1, filename: "event_forest_img1.jpg", content_type: "image/jpg")
event1.save
event1.images.attach(io: @event_forest_img2, filename: "event_forest_img2.jpg", content_type: "image/jpg")
event1.save
event1.images.attach(io: @event_forest_img3, filename: "event_forest_img3.jpg", content_type: "image/jpg")
event1.save
event2.images.attach(io: @event_architecture_img1, filename: "event_architecture_img1.jpg", content_type: "image/jpg")
event2.save
event2.images.attach(io: @event_architecture_img2, filename: "event_architecture_img2.jpg", content_type: "image/jpg")
event2.save
event2.images.attach(io: @event_architecture_img3, filename: "event_architecture_img3.jpg", content_type: "image/jpg")
event2.save
event3.images.attach(io: @event_portrait_img1, filename: "event_portrait_img1.jpg", content_type: "image/jpg")
event3.save
event3.images.attach(io: @event_portrait_img2, filename: "event_portrait_img2.jpg", content_type: "image/jpg")
event3.save
event3.images.attach(io: @event_portrait_img3, filename: "event_portrait_img3.jpg", content_type: "image/jpg")
event3.save
event4.images.attach(io: @event_night_img1, filename: "event_night_img1.jpg", content_type: "image/jpg")
event4.save
event4.images.attach(io: @event_night_img2, filename: "event_night_img2.jpg", content_type: "image/jpg")
event4.save
event4.images.attach(io: @event_night_img3, filename: "event_night_img3.jpg", content_type: "image/jpg")
event4.save

puts "Creating bookings..."
# bookings
Booking.create!(event_id: event1.id, user_id: user2.id)
Booking.create!(event_id: event2.id, user_id: user3.id)
Booking.create!(event_id: event3.id, user_id: user4.id)
Booking.create!(event_id: event4.id, user_id: user1.id)

puts "Seeding complete!"

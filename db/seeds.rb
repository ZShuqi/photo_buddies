require "open-uri"

puts "Cleaning database..."
Comment.delete_all
puts "."
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
Community.delete_all
puts "."

puts "Creating community..."
berlin = Community.create!(name: "Berlin")

puts "Creating users..."
# avatars
avatar1 = URI.open("https://images.unsplash.com/photo-1595152772835-219674b2a8a6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8c21pbGV8ZW58MHx8MHx8fDI%3D&auto=format&fit=crop&w=500&q=60")
avatar2 = URI.open("https://images.unsplash.com/photo-1515023115689-589c33041d3c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHNtaWxlfGVufDB8fDB8fHwy&auto=format&fit=crop&w=500&q=60")
avatar3 = URI.open("https://images.unsplash.com/photo-1548142813-c348350df52b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHNtaWxlfGVufDB8fDB8fHwy&auto=format&fit=crop&w=500&q=60")
avatar4 = URI.open("https://images.unsplash.com/photo-1580465446361-8aae5321522b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fHNtaWxlfGVufDB8fDB8fHwy&auto=format&fit=crop&w=500&q=60")
# banner_photo
bannerphoto1 = URI.open("https://images.unsplash.com/photo-1546952396-57a6bb8895de?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=388&q=80")
bannerphoto2 = URI.open("https://images.unsplash.com/photo-1588568810409-3e0b4a872171?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80")
bannerphoto3 = URI.open("https://images.unsplash.com/photo-1501898047706-55903296cd09?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80")
bannerphoto4 = URI.open("https://images.unsplash.com/photo-1581268879726-e9066753b737?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80")

# users
user1 = User.new(email: "ayub@gmail.com", password: "123456", username: 'ayub', community_id: berlin.id, description: "🌟 Join me on this photographic journey, and let's capture the extraordinary beauty of life together. 📷✨")
user1.photo.attach(io: avatar1, filename: "user1.jpg", content_type: "image/png")
user1.banner_photo.attach(io: bannerphoto1, filename: "bannerphoto1.jpg", content_type: "image/png")
user1.save
puts "."
user2 = User.new(email: "elisa@gmail.com", password: "123456", username: 'elisa', community_id: berlin.id, description:"🌟 Join me on this photographic journey, and let's capture the extraordinary beauty of life together. 📷✨")
user2.photo.attach(io: avatar2, filename: "user2.jpg", content_type: "image/pgn")
user2.banner_photo.attach(io: bannerphoto2, filename: "bannerphoto2.jpg", content_type: "image/png")
user2.save
puts "."
user3 = User.new(email: "shuqi@gmail.com", password: "123456", username: 'shuqi', community_id: berlin.id, description:"🌟 Join me on this photographic journey, and let's capture the extraordinary beauty of life together. 📷✨")
user3.photo.attach(io: avatar3, filename: "user3.jpg", content_type: "image/png")
user3.banner_photo.attach(io: bannerphoto3, filename: "bannerphoto3.jpg", content_type: "image/png")
user3.save
puts "."
user4 = User.new(email: "lucile@gmail.com", password: "123456", username: 'lucile', community_id: berlin.id, description:"🌟 Join me on this photographic journey, and let's capture the extraordinary beauty of life together. 📷✨")
user4.photo.attach(io: avatar4, filename: "user4.jpg", content_type: "image/png")
user4.banner_photo.attach(io: bannerphoto4, filename: "bannerphoto4.jpg", content_type: "image/png")
user4.save
puts "."
puts "Creating galleries..."


ph1 = URI.open("https://images.unsplash.com/photo-1488675577037-0d517feb0b09?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dXJiYW58ZW58MHx8MHx8fDI%3D&auto=format&fit=crop&w=1000&q=60")
ph2 = URI.open("https://images.unsplash.com/photo-1453989799106-bbad8d7b5191?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8dXJiYW58ZW58MHx8MHx8fDI%3D&auto=format&fit=crop&w=1000&q=60")
ph3 = URI.open("https://images.unsplash.com/photo-1612150929345-8b3c73bb74f2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8dXJiYW4lMjBncmFmZml0aXxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=700&q=60")
ph4 = URI.open("https://images.unsplash.com/photo-1555972694-13c981cd550c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8dXJiYW4lMjBncmFmZml0aXxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=700&q=60")

ph5 = URI.open("https://images.unsplash.com/photo-1425913397330-cf8af2ff40a1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Zm9yZXN0fGVufDB8fDB8fHwy&auto=format&fit=crop&w=700&q=60")
ph6 = URI.open("https://images.unsplash.com/photo-1542202229-7d93c33f5d07?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8Zm9yZXN0fGVufDB8fDB8fHwy&auto=format&fit=crop&w=700&q=60")
ph7 = URI.open("https://images.unsplash.com/photo-1596237563267-84ffd99c80e1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8Zm9yZXN0fGVufDB8fDB8fHwy&auto=format&fit=crop&w=700&q=60")
ph8 = URI.open("https://images.unsplash.com/photo-1516214104703-d870798883c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fGZvcmVzdHxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=700&q=60")
ph9 = URI.open("https://images.unsplash.com/photo-1524577912606-4d19b5731a24?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bGFrZSUyMGZvcmVzdHxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=700&q=60")
ph10 = URI.open("https://images.unsplash.com/photo-1599575239832-9a211999a97a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8bGFrZSUyMGZvcmVzdHxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=700&q=60")
ph11 = URI.open("https://images.unsplash.com/photo-1536092617418-62993979e6b2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGxha2UlMjBmb3Jlc3R8ZW58MHx8MHx8fDI%3D&auto=format&fit=crop&w=700&q=60")
ph12 = URI.open("https://images.unsplash.com/photo-1534612723680-c1555b985788?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8bGFrZSUyMGZvcmVzdCUyMHN1bnNldHxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=700&q=60")
ph13 = URI.open("https://images.unsplash.com/photo-1535295972055-1c762f4483e5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVvcGxlJTIwZGVzaWduJTIwZmFzaGlvbiUyMGhhcHB5fGVufDB8fDB8fHwy&auto=format&fit=crop&w=700&q=60")
ph14 = URI.open("https://images.unsplash.com/photo-1575248667635-8202792796e9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cGVvcGxlJTIwZGVzaWduJTIwZmFzaGlvbiUyMGhhcHB5fGVufDB8fDB8fHwy&auto=format&fit=crop&w=700&q=60")
ph15 = URI.open("https://images.unsplash.com/photo-1657073901567-ae69a6ba4fcf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHBlb3BsZSUyMGRlc2lnbiUyMGZhc2hpb24lMjBoYXBweXxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=700&q=60")
ph16 = URI.open("https://images.unsplash.com/photo-1553845757-677a58d78127?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHBlb3BsZSUyMGRlc2lnbiUyMGZhc2hpb24lMjBoYXBweXxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=700&q=60n")
ph17 = URI.open("https://images.unsplash.com/photo-1615828055135-18004ed15196?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8dXJiYW4lMjBuaWdodHxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=1000&q=60")
ph18 = URI.open("https://images.unsplash.com/photo-1522767458873-9e098ac1ec82?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8dXJiYW4lMjBuaWdodHxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=1000&q=60")
ph19 = URI.open("https://images.unsplash.com/photo-1527646736858-63d6105cf796?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjN8fHVyYmFuJTIwbmlnaHR8ZW58MHx8MHx8fDI%3D&auto=format&fit=crop&w=1000&q=60")
ph20 = URI.open("https://images.unsplash.com/photo-1506021180614-27b3f7489640?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8dXJiYW4lMjBncmFmZml0aXxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=1000&q=60")
ph21 = URI.open("https://images.unsplash.com/photo-1523712999610-f77fbcfc3843?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Zm9yZXN0JTIwbGlnaHR8ZW58MHx8MHx8fDI%3D&auto=format&fit=crop&w=1000&q=600")
ph22 = URI.open("https://images.unsplash.com/photo-1603346996604-cd77fc859e1d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Zm9yZXN0JTIwbGlnaHR8ZW58MHx8MHx8fDI%3D&auto=format&fit=crop&w=1000&q=60")
ph23 = URI.open("https://images.unsplash.com/photo-1527863207983-b38888c0d9d4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Zm9yZXN0JTIwYmlyZHxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=1000&q=60")
ph24 = URI.open("https://images.unsplash.com/photo-1588274267755-23d87baaadb2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8Zm9yZXN0JTIwYmlyZHxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=1000&q=60")
ph25 = URI.open("https://images.unsplash.com/photo-1486312338219-ce68d2c6f44d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGNvbXB1dGVyfGVufDB8fDB8fHwy&auto=format&fit=crop&w=700&q=60")
ph26 = URI.open("https://images.unsplash.com/photo-1592424002053-21f369ad7fdb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGNvbXB1dGVyJTIwY29kZXxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=700&q=60")
ph27 = URI.open("https://images.unsplash.com/photo-1504639725590-34d0984388bd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGNvbXB1dGVyJTIwY29kZXxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=700&q=60")
ph28 = URI.open("https://images.unsplash.com/photo-1551641145-a1e18544acb9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y29tcHV0ZXIlMjBjb2RlJTIwcmFpbnxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=700&q=60")
# galleries
gallery1 = Gallery.create!(user_id: user1.id, name: "Urban vibes")
gallery1.photos.attach(io: ph1, filename: "nes.png", content_type: "image/png")
gallery1.photos.attach(io: ph2, filename: "nes.png", content_type: "image/png")
gallery1.photos.attach(io: ph3, filename: "nes.png", content_type: "image/png")
gallery1.photos.attach(io: ph4, filename: "nes.png", content_type: "image/png")

gallery2 = Gallery.create!(user_id: user1.id, name: "A Walk in the Forest")
gallery2.photos.attach(io: ph5, filename: "nes.png", content_type: "image/png")
gallery2.photos.attach(io: ph6, filename: "nes.png", content_type: "image/png")
gallery2.photos.attach(io: ph7, filename: "nes.png", content_type: "image/png")
gallery2.photos.attach(io: ph8, filename: "nes.png", content_type: "image/png")

gallery3 = Gallery.create!(user_id: user2.id, name: "By the Lake")
gallery3.photos.attach(io: ph9, filename: "nes.png", content_type: "image/png")
gallery3.photos.attach(io: ph10, filename: "nes.png", content_type: "image/png")
gallery3.photos.attach(io: ph11, filename: "nes.png", content_type: "image/png")
gallery3.photos.attach(io: ph12, filename: "nes.png", content_type: "image/png")

gallery4 = Gallery.create!(user_id: user2.id, name: "Design Photo Shoot!")
gallery4.photos.attach(io: ph13, filename: "nes.png", content_type: "image/png")
gallery4.photos.attach(io: ph14, filename: "nes.png", content_type: "image/png")
gallery4.photos.attach(io: ph15, filename: "nes.png", content_type: "image/png")
gallery4.photos.attach(io: ph16, filename: "nes.png", content_type: "image/png")

gallery5 = Gallery.create!(user_id: user3.id, name: "Urban vibes")
gallery5.photos.attach(io: ph17, filename: "nes.png", content_type: "image/png")
gallery5.photos.attach(io: ph18, filename: "nes.png", content_type: "image/png")
gallery5.photos.attach(io: ph19, filename: "nes.png", content_type: "image/png")
gallery5.photos.attach(io: ph20, filename: "nes.png", content_type: "image/png")

gallery6 = Gallery.create!(user_id: user3.id, name: "A Walk in the Forest")
gallery6.photos.attach(io: ph21, filename: "nes.png", content_type: "image/png")
gallery6.photos.attach(io: ph22, filename: "nes.png", content_type: "image/png")
gallery6.photos.attach(io: ph23, filename: "nes.png", content_type: "image/png")
gallery6.photos.attach(io: ph24, filename: "nes.png", content_type: "image/png")

gallery7 = Gallery.create!(user_id: user4.id, name: "A Summer Coding")
gallery7.photos.attach(io: ph25, filename: "nes.png", content_type: "image/png")
gallery7.photos.attach(io: ph26, filename: "nes.png", content_type: "image/png")
gallery7.photos.attach(io: ph27, filename: "nes.png", content_type: "image/png")
gallery7.photos.attach(io: ph28, filename: "nes.png", content_type: "image/png")

puts "Creating photos..."
# photos

ph1 = URI.open("https://images.unsplash.com/photo-1488675577037-0d517feb0b09?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dXJiYW58ZW58MHx8MHx8fDI%3D&auto=format&fit=crop&w=1000&q=60")
ph2 = URI.open("https://images.unsplash.com/photo-1453989799106-bbad8d7b5191?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8dXJiYW58ZW58MHx8MHx8fDI%3D&auto=format&fit=crop&w=1000&q=60")
ph3 = URI.open("https://images.unsplash.com/photo-1612150929345-8b3c73bb74f2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8dXJiYW4lMjBncmFmZml0aXxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=700&q=60")
ph4 = URI.open("https://images.unsplash.com/photo-1555972694-13c981cd550c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8dXJiYW4lMjBncmFmZml0aXxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=700&q=60")

photo1 = Photo.new(address: "Friedrichschain, Berlin", keyword: "urban", likes: 4, gallery_id: gallery1.id)
photo1.photo.attach(io: ph1, filename: "nes.png", content_type: "image/png")
photo1.save
puts "."
photo2 = Photo.new(address: "Friedrichschain, Berlin", keyword: "urban", likes: 12, gallery_id: gallery1.id)
photo2.photo.attach(io: ph2, filename: "nes.png", content_type: "image/png")
photo2.save
puts "."
photo3 = Photo.new(address: "Friedrichschain, Berlin", keyword: "urban", likes: 8, gallery_id: gallery1.id)
photo3.photo.attach(io: ph3, filename: "nes.png", content_type: "image/png")
photo3.save
puts "."
photo4 = Photo.new(address: "Friedrichschain, Berlin", keyword: "urban", likes: 3, gallery_id: gallery1.id)
photo4.photo.attach(io: ph4, filename: "nes.png", content_type: "image/png")
photo4.save
puts "."

ph5 = URI.open("https://images.unsplash.com/photo-1425913397330-cf8af2ff40a1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Zm9yZXN0fGVufDB8fDB8fHwy&auto=format&fit=crop&w=700&q=60")
ph6 = URI.open("https://images.unsplash.com/photo-1542202229-7d93c33f5d07?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8Zm9yZXN0fGVufDB8fDB8fHwy&auto=format&fit=crop&w=700&q=60")
ph7 = URI.open("https://images.unsplash.com/photo-1596237563267-84ffd99c80e1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8Zm9yZXN0fGVufDB8fDB8fHwy&auto=format&fit=crop&w=700&q=60")
ph8 = URI.open("https://images.unsplash.com/photo-1516214104703-d870798883c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fGZvcmVzdHxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=700&q=60")

photo5 = Photo.new(address: "Forst Grunewald, Berlin", keyword: "forest", likes: 9, gallery_id: gallery2.id)
photo5.photo.attach(io: ph5, filename: "nes.png", content_type: "image/png")
photo5.save
puts "."
photo6 = Photo.new(address: "Forst Grunewald, Berlin", keyword: "forest", likes: 3, gallery_id: gallery2.id)
photo6.photo.attach(io: ph6, filename: "nes.png", content_type: "image/png")
photo6.save
puts "."
photo7 = Photo.new(address: "Forst Grunewald, Berlin", keyword: "forest", likes: 2, gallery_id: gallery2.id)
photo7.photo.attach(io: ph7, filename: "nes.png", content_type: "image/png")
photo7.save
puts "."
photo8 = Photo.new(address: "Forst Grunewald, Berlin", keyword: "forest", likes: 20, gallery_id: gallery2.id)
photo8.photo.attach(io: ph8, filename: "nes.png", content_type: "image/png")
photo8.save
puts "."

ph9 = URI.open("https://images.unsplash.com/photo-1524577912606-4d19b5731a24?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bGFrZSUyMGZvcmVzdHxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=700&q=60")
ph10 = URI.open("https://images.unsplash.com/photo-1599575239832-9a211999a97a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8bGFrZSUyMGZvcmVzdHxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=700&q=60")
ph11 = URI.open("https://images.unsplash.com/photo-1536092617418-62993979e6b2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGxha2UlMjBmb3Jlc3R8ZW58MHx8MHx8fDI%3D&auto=format&fit=crop&w=700&q=60")
ph12 = URI.open("https://images.unsplash.com/photo-1534612723680-c1555b985788?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8bGFrZSUyMGZvcmVzdCUyMHN1bnNldHxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=700&q=60")

photo9 = Photo.new(address: "Grosser Müggelsee, Berlin", keyword: "lake", likes: 30, gallery_id: gallery3.id)
photo9.photo.attach(io: ph9, filename: "nes.png", content_type: "image/png")
photo9.save
puts "."
photo10 = Photo.new(address: "Grosser Müggelsee, Berlin", keyword: "lake", likes: 15, gallery_id: gallery3.id)
photo10.photo.attach(io: ph10, filename: "nes.png", content_type: "image/png")
photo10.save
puts "."
photo11 = Photo.new(address: "Grosser Müggelsee, Berlin", keyword: "lake", likes: 6, gallery_id: gallery3.id)
photo11.photo.attach(io: ph11, filename: "nes.png", content_type: "image/png")
photo11.save
puts "."
photo12 = Photo.new(address: "Grosser Müggelsee, Berlin", keyword: "lake", likes: 10, gallery_id: gallery3.id)
photo12.photo.attach(io: ph12, filename: "nes.png", content_type: "image/png")
photo12.save
puts "."

ph13 = URI.open("https://images.unsplash.com/photo-1535295972055-1c762f4483e5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVvcGxlJTIwZGVzaWduJTIwZmFzaGlvbiUyMGhhcHB5fGVufDB8fDB8fHwy&auto=format&fit=crop&w=700&q=60")
ph14 = URI.open("https://images.unsplash.com/photo-1575248667635-8202792796e9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cGVvcGxlJTIwZGVzaWduJTIwZmFzaGlvbiUyMGhhcHB5fGVufDB8fDB8fHwy&auto=format&fit=crop&w=700&q=60")
ph15 = URI.open("https://images.unsplash.com/photo-1657073901567-ae69a6ba4fcf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHBlb3BsZSUyMGRlc2lnbiUyMGZhc2hpb24lMjBoYXBweXxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=700&q=60")
ph16 = URI.open("https://images.unsplash.com/photo-1553845757-677a58d78127?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHBlb3BsZSUyMGRlc2lnbiUyMGZhc2hpb24lMjBoYXBweXxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=700&q=60n")

photo13 = Photo.new(address: "Kreuzberg, Berlin", keyword: "people", likes: 20, gallery_id: gallery4.id)
photo13.photo.attach(io: ph13, filename: "nes.png", content_type: "image/png")
photo13.save
puts "."
photo14 = Photo.new(address: "Kreuzberg, Berlin", keyword: "people", likes: 7, gallery_id: gallery4.id)
photo14.photo.attach(io: ph14, filename: "nes.png", content_type: "image/png")
photo14.save
puts "."
photo15 = Photo.new(address: "Kreuzberg, Berlin", keyword: "people", likes: 6, gallery_id: gallery4.id)
photo15.photo.attach(io: ph15, filename: "nes.png", content_type: "image/png")
photo15.save
puts "."
photo16 = Photo.new(address: "Kreuzberg, Berlin", keyword: "people", likes: 13, gallery_id: gallery4.id)
photo16.photo.attach(io: ph16, filename: "nes.png", content_type: "image/png")
photo16.save
puts "."

ph17 = URI.open("https://images.unsplash.com/photo-1615828055135-18004ed15196?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8dXJiYW4lMjBuaWdodHxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=1000&q=60")
ph18 = URI.open("https://images.unsplash.com/photo-1522767458873-9e098ac1ec82?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8dXJiYW4lMjBuaWdodHxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=1000&q=60")
ph19 = URI.open("https://images.unsplash.com/photo-1527646736858-63d6105cf796?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjN8fHVyYmFuJTIwbmlnaHR8ZW58MHx8MHx8fDI%3D&auto=format&fit=crop&w=1000&q=60")
ph20 = URI.open("https://images.unsplash.com/photo-1506021180614-27b3f7489640?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8dXJiYW4lMjBncmFmZml0aXxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=1000&q=60")

photo17 = Photo.new(address: "Friedrichschain, Berlin", keyword: "urban", likes: 4, gallery_id: gallery5.id)
photo17.photo.attach(io: ph17, filename: "nes.png", content_type: "image/png")
photo17.save
puts "."
photo18 = Photo.new(address: "Friedrichschain, Berlin", keyword: "urban", likes: 12, gallery_id: gallery5.id)
photo18.photo.attach(io: ph18, filename: "nes.png", content_type: "image/png")
photo18.save
puts "."
photo19 = Photo.new(address: "Friedrichschain, Berlin", keyword: "urban", likes: 8, gallery_id: gallery5.id)
photo19.photo.attach(io: ph19, filename: "nes.png", content_type: "image/png")
photo19.save
puts "."
photo20 = Photo.new(address: "Friedrichschain, Berlin", keyword: "urban", likes: 3, gallery_id: gallery5.id)
photo20.photo.attach(io: ph20, filename: "nes.png", content_type: "image/png")
photo20.save
puts "."

ph21 = URI.open("https://images.unsplash.com/photo-1523712999610-f77fbcfc3843?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Zm9yZXN0JTIwbGlnaHR8ZW58MHx8MHx8fDI%3D&auto=format&fit=crop&w=1000&q=600")
ph22 = URI.open("https://images.unsplash.com/photo-1603346996604-cd77fc859e1d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Zm9yZXN0JTIwbGlnaHR8ZW58MHx8MHx8fDI%3D&auto=format&fit=crop&w=1000&q=60")
ph23 = URI.open("https://images.unsplash.com/photo-1527863207983-b38888c0d9d4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Zm9yZXN0JTIwYmlyZHxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=1000&q=60")
ph24 = URI.open("https://images.unsplash.com/photo-1588274267755-23d87baaadb2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8Zm9yZXN0JTIwYmlyZHxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=1000&q=60")

photo21 = Photo.new(address: "Forst Grunewald, Berlin", keyword: "forest", likes: 9, gallery_id: gallery6.id)
photo21.photo.attach(io: ph21, filename: "nes.png", content_type: "image/png")
photo21.save
puts "."
photo22 = Photo.new(address: "Forst Grunewald, Berlin", keyword: "forest", likes: 3, gallery_id: gallery6.id)
photo22.photo.attach(io: ph22, filename: "nes.png", content_type: "image/png")
photo22.save
puts "."
photo23 = Photo.new(address: "Forst Grunewald, Berlin", keyword: "forest", likes: 2, gallery_id: gallery6.id)
photo23.photo.attach(io: ph23, filename: "nes.png", content_type: "image/png")
photo23.save
puts "."
photo24 = Photo.new(address: "Forst Grunewald, Berlin", keyword: "forest", likes: 20, gallery_id: gallery6.id)
photo24.photo.attach(io: ph24, filename: "nes.png", content_type: "image/png")
photo24.save
puts "."

ph25 = URI.open("https://images.unsplash.com/photo-1486312338219-ce68d2c6f44d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGNvbXB1dGVyfGVufDB8fDB8fHwy&auto=format&fit=crop&w=700&q=60")
ph26 = URI.open("https://images.unsplash.com/photo-1592424002053-21f369ad7fdb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGNvbXB1dGVyJTIwY29kZXxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=700&q=60")
ph27 = URI.open("https://images.unsplash.com/photo-1504639725590-34d0984388bd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGNvbXB1dGVyJTIwY29kZXxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=700&q=60")
ph28 = URI.open("https://images.unsplash.com/photo-1551641145-a1e18544acb9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y29tcHV0ZXIlMjBjb2RlJTIwcmFpbnxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=700&q=60")

photo25 = Photo.new(address: "Ostkreuz, Berlin", keyword: "work", likes: 9, gallery_id: gallery7.id)
photo25.photo.attach(io: ph25, filename: "nes.png", content_type: "image/png")
photo25.save
puts "."
photo26 = Photo.new(address: "Ostkreuz, Berlin", keyword: "work", likes: 3, gallery_id: gallery7.id)
photo26.photo.attach(io: ph26, filename: "nes.png", content_type: "image/png")
photo26.save
puts "."
photo27 = Photo.new(address: "Ostkreuz, Berlin", keyword: "work", likes: 2, gallery_id: gallery7.id)
photo27.photo.attach(io: ph27, filename: "nes.png", content_type: "image/png")
photo27.save
puts "."
photo28 = Photo.new(address: "Ostkreuz, Berlin", keyword: "work", likes: 20, gallery_id: gallery7.id)
photo28.photo.attach(io: ph28, filename: "nes.png", content_type: "image/png")
photo28.save
puts "."

puts "Creating comments..."

Comment.create!(photo_id: photo1.id, user_id: user4.id, content: "Great work!")
Comment.create!(photo_id: photo1.id, user_id: user3.id, content: "Wow, amazing!")
Comment.create!(photo_id: photo1.id, user_id: user1.id, content: "Haha, thanks people ☺️")
puts "."
Comment.create!(photo_id: photo2.id, user_id: user2.id, content: "Very nice!")
Comment.create!(photo_id: photo2.id, user_id: user4.id, content: "Great work!")
puts "."
Comment.create!(photo_id: photo3.id, user_id: user3.id, content: "Cool shot mate!")
puts "."

Comment.create!(photo_id: photo5.id, user_id: user2.id, content: "Cool shot mate!")
Comment.create!(photo_id: photo5.id, user_id: user1.id, content: "Thanks :)")
puts "."
Comment.create!(photo_id: photo6.id, user_id: user4.id, content: "Great work!")
Comment.create!(photo_id: photo6.id, user_id: user3.id, content: "Wow, amazing!")
Comment.create!(photo_id: photo6.id, user_id: user1.id, content: "Haha, thanks people ☺️")
puts "."
Comment.create!(photo_id: photo8.id, user_id: user2.id, content: "Very nice!")
Comment.create!(photo_id: photo8.id, user_id: user4.id, content: "Great work!")
puts "."

Comment.create!(photo_id: photo10.id, user_id: user4.id, content: "Great work!")
Comment.create!(photo_id: photo10.id, user_id: user3.id, content: "Wow, amazing!")
Comment.create!(photo_id: photo10.id, user_id: user2.id, content: "Haha, thanks people ☺️")
puts "."
Comment.create!(photo_id: photo11.id, user_id: user1.id, content: "Very nice!")
Comment.create!(photo_id: photo11.id, user_id: user3.id, content: "Great work!")
puts "."
Comment.create!(photo_id: photo12.id, user_id: user1.id, content: "Cool shot mate!")
puts "."

Comment.create!(photo_id: photo13.id, user_id: user3.id, content: "Cool shot mate!")
Comment.create!(photo_id: photo13.id, user_id: user2.id, content: "Thanks :)")
puts "."
Comment.create!(photo_id: photo14.id, user_id: user1.id, content: "Great work!")
Comment.create!(photo_id: photo14.id, user_id: user3.id, content: "Wow, amazing!")
Comment.create!(photo_id: photo14.id, user_id: user2.id, content: "Haha, thanks people ☺️")
puts "."
Comment.create!(photo_id: photo15.id, user_id: user2.id, content: "Very nice!")
Comment.create!(photo_id: photo15.id, user_id: user4.id, content: "Great work!")
puts "."

Comment.create!(photo_id: photo17.id, user_id: user4.id, content: "Great work!")
Comment.create!(photo_id: photo17.id, user_id: user2.id, content: "Wow, amazing!")
Comment.create!(photo_id: photo17.id, user_id: user3.id, content: "Haha, thanks people ☺️")
puts "."
Comment.create!(photo_id: photo18.id, user_id: user2.id, content: "Very nice!")
Comment.create!(photo_id: photo18.id, user_id: user1.id, content: "Great work!")
puts "."
Comment.create!(photo_id: photo19.id, user_id: user1.id, content: "Cool shot mate!")
puts "."

Comment.create!(photo_id: photo21.id, user_id: user4.id, content: "Cool shot mate!")
Comment.create!(photo_id: photo21.id, user_id: user3.id, content: "Thanks :)")
puts "."
Comment.create!(photo_id: photo22.id, user_id: user1.id, content: "Great work!")
Comment.create!(photo_id: photo22.id, user_id: user2.id, content: "Wow, amazing!")
Comment.create!(photo_id: photo22.id, user_id: user3.id, content: "Haha, thanks people ☺️")
puts "."
Comment.create!(photo_id: photo23.id, user_id: user2.id, content: "Very nice!")
Comment.create!(photo_id: photo23.id, user_id: user4.id, content: "Great work!")
puts "."

Comment.create!(photo_id: photo25.id, user_id: user1.id, content: "Hey newbie!!! Nice shots!!")
Comment.create!(photo_id: photo25.id, user_id: user4.id, content: "Thanks :)")
puts "."
Comment.create!(photo_id: photo26.id, user_id: user1.id, content: "Great! Come shoot with us next time")
Comment.create!(photo_id: photo26.id, user_id: user4.id, content: "Good idea :):):)")
Comment.create!(photo_id: photo26.id, user_id: user3.id, content: "Nice pics")
Comment.create!(photo_id: photo26.id, user_id: user4.id, content: "Thanks a lot!")
puts "."

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
event1 = Event.create!(title: "Forest shoot", address: "Forst Grunewald, Berlin", date: '07/07/2023, 11:00', description: "Explore the forest and take great shots with amazing sunlight", user_id: user1.id)
event2 = Event.create!(title: "Modern Architecture", address: "Kreuzberg, Berlin", date: '12/07/2023, 12:00', description: "Let's meet in the heart of Berlin and take great shots of Berlin's modern architecture landmarks!", user_id: user2.id)
event3 = Event.create!(title: "Photo shoot!", address: "Kreuzberg, Berlin", date: '01/07/2023, 10:00', description: "Come and shoot photos of independent designers clothes for free!", user_id: user3.id)
event4 = Event.create!(title: "Berlin by Night", address: "Tiergarten, Berlin", date: '10/08/2023, 10:00', description: "Let's have a night city tour around Tiergarten and exchange our emo thoughts about photography", user_id: user4.id)

# attach images to events
event1.images.attach(io: @event_forest_img1, filename: "event_forest_img1.jpg", content_type: "image/jpg")
event1.save
puts "."
event1.images.attach(io: @event_forest_img2, filename: "event_forest_img2.jpg", content_type: "image/jpg")
event1.save
puts "."
event1.images.attach(io: @event_forest_img3, filename: "event_forest_img3.jpg", content_type: "image/jpg")
event1.save
puts "."

event2.images.attach(io: @event_architecture_img1, filename: "event_architecture_img1.jpg", content_type: "image/jpg")
event2.save
puts "."
event2.images.attach(io: @event_architecture_img2, filename: "event_architecture_img2.jpg", content_type: "image/jpg")
event2.save
event2.images.attach(io: @event_architecture_img3, filename: "event_architecture_img3.jpg", content_type: "image/jpg")
event2.save
puts "."

event3.images.attach(io: @event_portrait_img1, filename: "event_portrait_img1.jpg", content_type: "image/jpg")
event3.save
puts "."
event3.images.attach(io: @event_portrait_img2, filename: "event_portrait_img2.jpg", content_type: "image/jpg")
event3.save
puts "."
event3.images.attach(io: @event_portrait_img3, filename: "event_portrait_img3.jpg", content_type: "image/jpg")
event3.save
puts "."

event4.images.attach(io: @event_night_img1, filename: "event_night_img1.jpg", content_type: "image/jpg")
event4.save
puts "."
event4.images.attach(io: @event_night_img2, filename: "event_night_img2.jpg", content_type: "image/jpg")
event4.save
puts "."
event4.images.attach(io: @event_night_img3, filename: "event_night_img3.jpg", content_type: "image/jpg")
event4.save
puts "."

puts "Creating bookings..."
# bookings
Booking.create!(event_id: event1.id, user_id: user2.id)
Booking.create!(event_id: event1.id, user_id: user3.id)

Booking.create!(event_id: event2.id, user_id: user3.id)
Booking.create!(event_id: event2.id, user_id: user1.id)
Booking.create!(event_id: event2.id, user_id: user4.id)

Booking.create!(event_id: event3.id, user_id: user1.id)

Booking.create!(event_id: event4.id, user_id: user1.id)

puts "Seeding complete!"

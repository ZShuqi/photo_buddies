require "open-uri"

puts "Cleaning database..."
Comment.delete_all
puts "."
Like.delete_all
puts "."
Photo.delete_all
puts "."
Gallery.delete_all
puts "."
Booking.delete_all
puts "."
Event.delete_all
puts "."
HotSpot.delete_all
puts "."
User.delete_all
puts "."
Community.delete_all
puts "."

puts "Creating community..."
com_desc = "Welcome to Berlin's Photography Community! Berlin is renowned for its exceptional range of landmarks, vibrant cultural scene and way of life that's somehow all go yet relaxed. In fact, the city is best known for its striking contrasts. Historical buildings stand alongside modern architecture as the past and present intermingle. Our Berlin photography thrives in this exciting atmosphere!"
berlin = Community.create!(name: "Berlin", description: com_desc)

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
user1 = User.new(email: "ayub@gmail.com", password: "123456", username: 'ayub', community_id: berlin.id, description: "I am a model photographer. In my work, I try to explore contemporary identity and the nature of representation.")
user1.photo.attach(io: avatar1, filename: "user1.jpg", content_type: "image/png")
user1.banner_photo.attach(io: bannerphoto1, filename: "bannerphoto1.jpg", content_type: "image/png")
user1.save
puts "."
user2 = User.new(email: "elisa@gmail.com", password: "123456", username: 'elisa', community_id: berlin.id, description: "🌟 Join me on this photographic journey, and let's capture the extraordinary beauty of life together. 📷✨")
user2.photo.attach(io: avatar2, filename: "user2.jpg", content_type: "image/png")
user2.banner_photo.attach(io: bannerphoto2, filename: "bannerphoto2.jpg", content_type: "image/png")
user2.save
puts "."
user3 = User.new(email: "shuqi@gmail.com", password: "123456", username: 'shuqi', community_id: berlin.id, description: "I am a landscape and travel photographer since 2008. I love to organize events in my city to meet new people!")
user3.photo.attach(io: avatar3, filename: "user3.jpg", content_type: "image/png")
user3.banner_photo.attach(io: bannerphoto3, filename: "bannerphoto3.jpg", content_type: "image/png")
user3.save
puts "."
user4 = User.new(email: "lucile@gmail.com", password: "123456", username: 'lucile', community_id: berlin.id, description: "I love beautiful content! When I am not coding, I'm most probably walking around Berlin taking photos of the city.")
user4.photo.attach(io: avatar4, filename: "user4.jpg", content_type: "image/png")
user4.banner_photo.attach(io: bannerphoto4, filename: "bannerphoto4.jpg", content_type: "image/png")
user4.save
puts "."

# extra users
avatar5 = URI.open("https://images.unsplash.com/photo-1599566219227-2efe0c9b7f5f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8c21pbGV8ZW58MHx8MHx8fDI%3D&auto=format&fit=crop&w=500&q=60")
avatar6 = URI.open("https://images.unsplash.com/photo-1489424731084-a5d8b219a5bb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHNtaWxlfGVufDB8fDB8fHwy&auto=format&fit=crop&w=500&q=60")
avatar7 = URI.open("https://images.unsplash.com/photo-1535295972055-1c762f4483e5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjR8fHNtaWxlfGVufDB8fDB8fHwy&auto=format&fit=crop&w=500&q=60")
avatar8 = URI.open("https://images.unsplash.com/photo-1548213238-0da7521bd6e0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjZ8fHNtaWxlfGVufDB8fDB8fHwy&auto=format&fit=crop&w=500&q=60")
avatar9 = URI.open("https://images.unsplash.com/photo-1512485694743-9c9538b4e6e0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzV8fHNtaWxlfGVufDB8fDB8fHwy&auto=format&fit=crop&w=500&q=60")
avatar10 = URI.open("https://images.unsplash.com/photo-1492633423870-43d1cd2775eb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODd8fHNtaWxlfGVufDB8fDB8fHwy&auto=format&fit=crop&w=500&q=60")
avatar11 = URI.open("https://images.unsplash.com/photo-1504199367641-aba8151af406?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTAzfHxzbWlsZXxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=500&q=60")
avatar12 = URI.open("https://images.unsplash.com/photo-1531123414780-f74242c2b052?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTExfHxzbWlsZXxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=500&q=60")

# copies of banners 1-4, can improve with more variety
bannerphoto5 = URI.open("https://images.unsplash.com/photo-1682687220566-5599dbbebf11?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxzZWFyY2h8MXx8c3Vuc2V0fGVufDB8fDB8fHwy&auto=format&fit=crop&w=500&q=60")
bannerphoto6 = URI.open("https://images.unsplash.com/photo-1586348943529-beaae6c28db9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8c3Vuc2V0fGVufDB8fDB8fHwy&auto=format&fit=crop&w=500&q=60")
bannerphoto7 = URI.open("https://images.unsplash.com/photo-1517685633466-403d6955aeab?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHN1bnNldHxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=500&q=60")
bannerphoto8 = URI.open("https://images.unsplash.com/photo-1515705576963-95cad62945b6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8c3RhcnN8ZW58MHx8MHx8fDI%3D&auto=format&fit=crop&w=500&q=60")
bannerphoto9 = URI.open("https://images.unsplash.com/photo-1508193638397-1c4234db14d8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGZvcmVzdHxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=500&q=60")
bannerphoto10 = URI.open("https://images.unsplash.com/photo-1478265409131-1f65c88f965c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHNub3d8ZW58MHx8MHx8fDI%3D&auto=format&fit=crop&w=500&q=60")
bannerphoto11 = URI.open("https://images.unsplash.com/photo-1517384084767-6bc118943770?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8c2FuZHxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=500&q=60")
bannerphoto12 = URI.open("https://images.unsplash.com/photo-1482881497185-d4a9ddbe4151?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8c2FuZHxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=500&q=60")

user5 = User.new(email: "maria@gmail.com", password: "123456", username: 'maria', community_id: berlin.id, description: "I am an independent commercial photographer with a strong interest in art and mechanical equipments since childhood.")
user5.photo.attach(io: avatar5, filename: "user5.jpg", content_type: "image/png")
user5.banner_photo.attach(io: bannerphoto5, filename: "bannerphoto5.jpg", content_type: "image/png")
user5.save
puts "."
user6 = User.new(email: "justine@gmail.com", password: "123456", username: 'justine', community_id: berlin.id, description:"📷 Hi! I am an amateur photographer trying to capture the story of people on the street with black-and-white photography.")
user6.photo.attach(io: avatar6, filename: "user6.jpg", content_type: "image/png")
user6.banner_photo.attach(io: bannerphoto6, filename: "bannerphoto6.jpg", content_type: "image/png")
user6.save
puts "."
user7 = User.new(email: "yuri@gmail.com", password: "123456", username: 'Yuri', community_id: berlin.id, description:"Hi ☺️! I am an amateur photographer and a food stylist. Feel free to reach out for a chat!")
user7.photo.attach(io: avatar7, filename: "user7.jpg", content_type: "image/png")
user7.banner_photo.attach(io: bannerphoto7, filename: "bannerphoto7.jpg", content_type: "image/png")
user7.save
puts "."
user8 = User.new(email: "rupert@gmail.com", password: "123456", username: 'rupert', community_id: berlin.id, description:"When I'm not shooting for the Harry Potter series, I like to go hiking in the mountains to take some great shots.")
user8.photo.attach(io: avatar8, filename: "user8.jpg", content_type: "image/png")
user8.banner_photo.attach(io: bannerphoto8, filename: "bannerphoto8.jpg", content_type: "image/png")
user8.save
puts "."
user9 = User.new(email: "otto@gmail.com", password: "123456", username: 'otto', community_id: berlin.id, description: "Hello there ✨✨✨ I'm not just a photographer. I'm also a model, hairdresser, stylist, and makeup artist. Nice to meet you!")
user9.photo.attach(io: avatar9, filename: "user9.jpg", content_type: "image/png")
user9.banner_photo.attach(io: bannerphoto9, filename: "bannerphoto9.jpg", content_type: "image/png")
user9.save
puts "."
user10 = User.new(email: "sally@gmail.com", password: "123456", username: 'sally', community_id: berlin.id, description:"Hi people, I've been working as a commercial photographer for more than ten years. I'd love to share my experience with you!")
user10.photo.attach(io: avatar10, filename: "user10.jpg", content_type: "image/png")
user10.banner_photo.attach(io: bannerphoto10, filename: "bannerphoto10.jpg", content_type: "image/png")
user10.save
puts "."
user11 = User.new(email: "ronald@gmail.com", password: "123456", username: 'ronald', community_id: berlin.id, description:"I am a photography enthusiast and I'd love to know more about great photo spots in our great city!")
user11.photo.attach(io: avatar11, filename: "user11.jpg", content_type: "image/png")
user11.banner_photo.attach(io: bannerphoto11, filename: "bannerphoto11.jpg", content_type: "image/png")
user11.save
puts "."
user12 = User.new(email: "ellie@gmail.com", password: "123456", username: 'ellie', community_id: berlin.id, description:"When I'm not teaching at the kindergarten, I like to roam about the city to discover its great architecture landmarks.")
user12.photo.attach(io: avatar12, filename: "user12.jpg", content_type: "image/png")
user12.banner_photo.attach(io: bannerphoto12, filename: "bannerphoto12.jpg", content_type: "image/png")
user12.save
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
ph26 = URI.open("https://images.unsplash.com/photo-1541532713592-79a0317b6b77?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGFydHl8ZW58MHx8MHx8fDI%3D&auto=format&fit=crop&w=500&q=60")
ph27 = URI.open("https://images.unsplash.com/photo-1504639725590-34d0984388bd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGNvbXB1dGVyJTIwY29kZXxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=700&q=60")
ph28 = URI.open("https://images.unsplash.com/photo-1551641145-a1e18544acb9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y29tcHV0ZXIlMjBjb2RlJTIwcmFpbnxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=700&q=60")
ph29 = URI.open("https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Zm9vZHxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=500&q=60")
ph30 = URI.open("https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Zm9vZHxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=500&q=60")
ph31 = URI.open("https://images.unsplash.com/photo-1484723091739-30a097e8f929?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGZvb2R8ZW58MHx8MHx8fDI%3D&auto=format&fit=crop&w=500&q=60")
ph32 = URI.open("https://images.unsplash.com/photo-1484980972926-edee96e0960d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjN8fGZvb2R8ZW58MHx8MHx8fDI%3D&auto=format&fit=crop&w=500&q=60")
ph33 = URI.open("https://images.unsplash.com/photo-1527661591475-527312dd65f5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZHJpbmt8ZW58MHx8MHx8fDI%3D&auto=format&fit=crop&w=500&q=60")
ph34 = URI.open("https://images.unsplash.com/photo-1551024709-8f23befc6f87?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8ZHJpbmt8ZW58MHx8MHx8fDI%3D&auto=format&fit=crop&w=500&q=60")
ph35 = URI.open("https://images.unsplash.com/photo-1615478503562-ec2d8aa0e24e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzJ8fGRyaW5rfGVufDB8fDB8fHwy&auto=format&fit=crop&w=500&q=60")
ph36 = URI.open("https://images.unsplash.com/photo-1560526860-1f0e56046c85?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGRyaW5rfGVufDB8fDB8fHwy&auto=format&fit=crop&w=500&q=60")

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

gallery8 = Gallery.create!(user_id: user5.id, name: "Design Photo Shoot!")
gallery8.photos.attach(io: ph13, filename: "nes.png", content_type: "image/png")
gallery8.photos.attach(io: ph14, filename: "nes.png", content_type: "image/png")
gallery8.photos.attach(io: ph15, filename: "nes.png", content_type: "image/png")
gallery8.photos.attach(io: ph16, filename: "nes.png", content_type: "image/png")

gallery9 = Gallery.create!(user_id: user5.id, name: "Urban vibes")
gallery9.photos.attach(io: ph17, filename: "nes.png", content_type: "image/png")
gallery9.photos.attach(io: ph18, filename: "nes.png", content_type: "image/png")
gallery9.photos.attach(io: ph19, filename: "nes.png", content_type: "image/png")
gallery9.photos.attach(io: ph20, filename: "nes.png", content_type: "image/png")

gallery10 = Gallery.create!(user_id: user6.id, name: "By the Lake")
gallery10.photos.attach(io: ph9, filename: "nes.png", content_type: "image/png")
gallery10.photos.attach(io: ph10, filename: "nes.png", content_type: "image/png")
gallery10.photos.attach(io: ph11, filename: "nes.png", content_type: "image/png")
gallery10.photos.attach(io: ph12, filename: "nes.png", content_type: "image/png")

gallery11 = Gallery.create!(user_id: user7.id, name: "Foods")
gallery11.photos.attach(io: ph29, filename: "nes.png", content_type: "image/png")
gallery11.photos.attach(io: ph30, filename: "nes.png", content_type: "image/png")
gallery11.photos.attach(io: ph31, filename: "nes.png", content_type: "image/png")
gallery11.photos.attach(io: ph32, filename: "nes.png", content_type: "image/png")

gallery12 = Gallery.create!(user_id: user7.id, name: "Drinks")
gallery12.photos.attach(io: ph33, filename: "nes.png", content_type: "image/png")
gallery12.photos.attach(io: ph34, filename: "nes.png", content_type: "image/png")
gallery12.photos.attach(io: ph35, filename: "nes.png", content_type: "image/png")
gallery12.photos.attach(io: ph36, filename: "nes.png", content_type: "image/png")

gallery13 = Gallery.create!(user_id: user8.id, name: "A Walk in the Forest")
gallery13.photos.attach(io: ph5, filename: "nes.png", content_type: "image/png")
gallery13.photos.attach(io: ph6, filename: "nes.png", content_type: "image/png")
gallery13.photos.attach(io: ph7, filename: "nes.png", content_type: "image/png")
gallery13.photos.attach(io: ph8, filename: "nes.png", content_type: "image/png")

gallery14 = Gallery.create!(user_id: user9.id, name: "By the Lake")
gallery14.photos.attach(io: ph9, filename: "nes.png", content_type: "image/png")
gallery14.photos.attach(io: ph10, filename: "nes.png", content_type: "image/png")
gallery14.photos.attach(io: ph11, filename: "nes.png", content_type: "image/png")
gallery14.photos.attach(io: ph12, filename: "nes.png", content_type: "image/png")

gallery15 = Gallery.create!(user_id: user9.id, name: "Urban vibes")
gallery15.photos.attach(io: ph17, filename: "nes.png", content_type: "image/png")
gallery15.photos.attach(io: ph18, filename: "nes.png", content_type: "image/png")
gallery15.photos.attach(io: ph19, filename: "nes.png", content_type: "image/png")
gallery15.photos.attach(io: ph20, filename: "nes.png", content_type: "image/png")

gallery16 = Gallery.create!(user_id: user10.id, name: "By the Lake")
gallery16.photos.attach(io: ph9, filename: "nes.png", content_type: "image/png")
gallery16.photos.attach(io: ph10, filename: "nes.png", content_type: "image/png")
gallery16.photos.attach(io: ph11, filename: "nes.png", content_type: "image/png")
gallery16.photos.attach(io: ph12, filename: "nes.png", content_type: "image/png")

gallery17 = Gallery.create!(user_id: user11.id, name: "A Walk in the Forest")
gallery17.photos.attach(io: ph5, filename: "nes.png", content_type: "image/png")
gallery17.photos.attach(io: ph6, filename: "nes.png", content_type: "image/png")
gallery17.photos.attach(io: ph7, filename: "nes.png", content_type: "image/png")
gallery17.photos.attach(io: ph8, filename: "nes.png", content_type: "image/png")

gallery18 = Gallery.create!(user_id: user11.id, name: "By the Lake")
gallery18.photos.attach(io: ph9, filename: "nes.png", content_type: "image/png")
gallery18.photos.attach(io: ph10, filename: "nes.png", content_type: "image/png")
gallery18.photos.attach(io: ph11, filename: "nes.png", content_type: "image/png")
gallery18.photos.attach(io: ph12, filename: "nes.png", content_type: "image/png")

gallery19 = Gallery.create!(user_id: user12.id, name: "Urban vibes")
gallery19.photos.attach(io: ph17, filename: "nes.png", content_type: "image/png")
gallery19.photos.attach(io: ph18, filename: "nes.png", content_type: "image/png")
gallery19.photos.attach(io: ph19, filename: "nes.png", content_type: "image/png")
gallery19.photos.attach(io: ph20, filename: "nes.png", content_type: "image/png")

gallery20 = Gallery.create!(user_id: user12.id, name: "By the Lake")
gallery20.photos.attach(io: ph9, filename: "nes.png", content_type: "image/png")
gallery20.photos.attach(io: ph10, filename: "nes.png", content_type: "image/png")
gallery20.photos.attach(io: ph11, filename: "nes.png", content_type: "image/png")
gallery20.photos.attach(io: ph12, filename: "nes.png", content_type: "image/png")

puts "Creating photos..."
# photos

photo1 = Photo.new(address: "Friedrichschain, Berlin", keyword: "urban", gallery_id: gallery1.id)
photo1.photo.attach(io: ph1, filename: "nes.png", content_type: "image/png")
photo1.save
puts "."
photo2 = Photo.new(address: "Friedrichschain, Berlin", keyword: "urban", gallery_id: gallery1.id)
photo2.photo.attach(io: ph2, filename: "nes.png", content_type: "image/png")
photo2.save
puts "."
photo3 = Photo.new(address: "Friedrichschain, Berlin", keyword: "urban", gallery_id: gallery1.id)
photo3.photo.attach(io: ph3, filename: "nes.png", content_type: "image/png")
photo3.save
puts "."
photo4 = Photo.new(address: "Friedrichschain, Berlin", keyword: "urban", gallery_id: gallery1.id)
photo4.photo.attach(io: ph4, filename: "nes.png", content_type: "image/png")
photo4.save
puts "."

photo5 = Photo.new(address: "Forst Grunewald, Berlin", keyword: "forest", gallery_id: gallery2.id)
photo5.photo.attach(io: ph5, filename: "nes.png", content_type: "image/png")
photo5.save
puts "."
photo6 = Photo.new(address: "Forst Grunewald, Berlin", keyword: "forest", gallery_id: gallery2.id)
photo6.photo.attach(io: ph6, filename: "nes.png", content_type: "image/png")
photo6.save
puts "."
photo7 = Photo.new(address: "Forst Grunewald, Berlin", keyword: "forest", gallery_id: gallery2.id)
photo7.photo.attach(io: ph7, filename: "nes.png", content_type: "image/png")
photo7.save
puts "."
photo8 = Photo.new(address: "Forst Grunewald, Berlin", keyword: "forest", gallery_id: gallery2.id)
photo8.photo.attach(io: ph8, filename: "nes.png", content_type: "image/png")
photo8.save
puts "."

photo9 = Photo.new(address: "Grosser Müggelsee, Berlin", keyword: "lake", gallery_id: gallery3.id)
photo9.photo.attach(io: ph9, filename: "nes.png", content_type: "image/png")
photo9.save
puts "."
photo10 = Photo.new(address: "Grosser Müggelsee, Berlin", keyword: "lake", gallery_id: gallery3.id)
photo10.photo.attach(io: ph10, filename: "nes.png", content_type: "image/png")
photo10.save
puts "."
photo11 = Photo.new(address: "Grosser Müggelsee, Berlin", keyword: "lake", gallery_id: gallery3.id)
photo11.photo.attach(io: ph11, filename: "nes.png", content_type: "image/png")
photo11.save
puts "."
photo12 = Photo.new(address: "Grosser Müggelsee, Berlin", keyword: "lake", gallery_id: gallery3.id)
photo12.photo.attach(io: ph12, filename: "nes.png", content_type: "image/png")
photo12.save
puts "."

photo13 = Photo.new(address: "Kreuzberg, Berlin", keyword: "people", gallery_id: gallery4.id)
photo13.photo.attach(io: ph13, filename: "nes.png", content_type: "image/png")
photo13.save
puts "."
photo14 = Photo.new(address: "Kreuzberg, Berlin", keyword: "people", gallery_id: gallery4.id)
photo14.photo.attach(io: ph14, filename: "nes.png", content_type: "image/png")
photo14.save
puts "."
photo15 = Photo.new(address: "Kreuzberg, Berlin", keyword: "people", gallery_id: gallery4.id)
photo15.photo.attach(io: ph15, filename: "nes.png", content_type: "image/png")
photo15.save
puts "."
photo16 = Photo.new(address: "Kreuzberg, Berlin", keyword: "people", gallery_id: gallery4.id)
photo16.photo.attach(io: ph16, filename: "nes.png", content_type: "image/png")
photo16.save
puts "."

photo17 = Photo.new(address: "Friedrichschain, Berlin", keyword: "urban", gallery_id: gallery5.id)
photo17.photo.attach(io: ph17, filename: "nes.png", content_type: "image/png")
photo17.save
puts "."
photo18 = Photo.new(address: "Friedrichschain, Berlin", keyword: "urban", gallery_id: gallery5.id)
photo18.photo.attach(io: ph18, filename: "nes.png", content_type: "image/png")
photo18.save
puts "."
photo19 = Photo.new(address: "Friedrichschain, Berlin", keyword: "urban", gallery_id: gallery5.id)
photo19.photo.attach(io: ph19, filename: "nes.png", content_type: "image/png")
photo19.save
puts "."
photo20 = Photo.new(address: "Friedrichschain, Berlin", keyword: "urban", gallery_id: gallery5.id)
photo20.photo.attach(io: ph20, filename: "nes.png", content_type: "image/png")
photo20.save
puts "."

photo21 = Photo.new(address: "Forst Grunewald, Berlin", keyword: "forest", gallery_id: gallery6.id)
photo21.photo.attach(io: ph21, filename: "nes.png", content_type: "image/png")
photo21.save
puts "."
photo22 = Photo.new(address: "Forst Grunewald, Berlin", keyword: "forest", gallery_id: gallery6.id)
photo22.photo.attach(io: ph22, filename: "nes.png", content_type: "image/png")
photo22.save
puts "."
photo23 = Photo.new(address: "Forst Grunewald, Berlin", keyword: "forest", gallery_id: gallery6.id)
photo23.photo.attach(io: ph23, filename: "nes.png", content_type: "image/png")
photo23.save
puts "."
photo24 = Photo.new(address: "Forst Grunewald, Berlin", keyword: "forest", gallery_id: gallery6.id)
photo24.photo.attach(io: ph24, filename: "nes.png", content_type: "image/png")
photo24.save
puts "."

photo25 = Photo.new(address: "Ostkreuz, Berlin", keyword: "work", gallery_id: gallery7.id)
photo25.photo.attach(io: ph25, filename: "nes.png", content_type: "image/png")
photo25.save
puts "."
photo26 = Photo.new(address: "Ostkreuz, Berlin", keyword: "work", gallery_id: gallery7.id)
photo26.photo.attach(io: ph26, filename: "nes.png", content_type: "image/png")
photo26.save
puts "."
photo27 = Photo.new(address: "Ostkreuz, Berlin", keyword: "work", gallery_id: gallery7.id)
photo27.photo.attach(io: ph27, filename: "nes.png", content_type: "image/png")
photo27.save
puts "."
photo28 = Photo.new(address: "Ostkreuz, Berlin", keyword: "work", gallery_id: gallery7.id)
photo28.photo.attach(io: ph28, filename: "nes.png", content_type: "image/png")
photo28.save
puts "."

photo29 = Photo.new(address: "Alexanderplatz, Alexanderstr., Berlin", keyword: "food", gallery_id: gallery11.id)
photo29.photo.attach(io: ph29, filename: "nes.png", content_type: "image/png")
photo29.save
puts "."
photo30 = Photo.new(address: "Alexanderplatz, Alexanderstr., Berlin", keyword: "food", gallery_id: gallery11.id)
photo30.photo.attach(io: ph30, filename: "nes.png", content_type: "image/png")
photo30.save
puts "."
photo31 = Photo.new(address: "Alexanderplatz, Alexanderstr., Berlin", keyword: "food", gallery_id: gallery11.id)
photo31photo.attach(io: ph31, filename: "nes.png", content_type: "image/png")
photo31.save
puts "."
photo32 = Photo.new(address: "Alexanderplatz, Alexanderstr., Berlin", keyword: "food", gallery_id: gallery11.id)
photo32.photo.attach(io: ph32, filename: "nes.png", content_type: "image/png")
photo32.save
puts "."

photo33 = Photo.new(address: "Alexanderplatz, Alexanderstr., Berlin", keyword: "food", gallery_id: gallery12.id)
photo33.photo.attach(io: ph33, filename: "nes.png", content_type: "image/png")
photo33.save
puts "."
photo34 = Photo.new(address: "Alexanderplatz, Alexanderstr., Berlin", keyword: "food", gallery_id: gallery12.id)
photo34.photo.attach(io: ph34, filename: "nes.png", content_type: "image/png")
photo34.save
puts "."
photo35 = Photo.new(address: "Alexanderplatz, Alexanderstr., Berlin", keyword: "food", gallery_id: gallery12.id)
photo35.photo.attach(io: ph35, filename: "nes.png", content_type: "image/png")
photo35.save
puts "."
photo36 = Photo.new(address: "Alexanderplatz, Alexanderstr., Berlin", keyword: "food", gallery_id: gallery12.id)
photo36.photo.attach(io: ph36, filename: "nes.png", content_type: "image/png")
photo36.save
puts "."

photo37 = Photo.new(address: "Forst Grunewald, Berlin", keyword: "forest", gallery_id: gallery13.id)
photo37.photo.attach(io: ph5, filename: "nes.png", content_type: "image/png")
photo37.save
puts "."
photo38 = Photo.new(address: "Forst Grunewald, Berlin", keyword: "forest", gallery_id: gallery13.id)
photo38.photo.attach(io: ph6, filename: "nes.png", content_type: "image/png")
photo38.save
puts "."
photo39 = Photo.new(address: "Forst Grunewald, Berlin", keyword: "forest", gallery_id: gallery13.id)
photo39.photo.attach(io: ph7, filename: "nes.png", content_type: "image/png")
photo39.save
puts "."
photo40 = Photo.new(address: "Forst Grunewald, Berlin", keyword: "forest", gallery_id: gallery13.id)
photo40.photo.attach(io: ph8, filename: "nes.png", content_type: "image/png")
photo40.save
puts "."

photo41 = Photo.new(address: "Forst Grunewald, Berlin", keyword: "forest", gallery_id: gallery17.id)
photo41.photo.attach(io: ph5, filename: "nes.png", content_type: "image/png")
photo41.save
puts "."
photo42 = Photo.new(address: "Forst Grunewald, Berlin", keyword: "forest", gallery_id: gallery17.id)
photo42.photo.attach(io: ph6, filename: "nes.png", content_type: "image/png")
photo42.save
puts "."
photo43 = Photo.new(address: "Forst Grunewald, Berlin", keyword: "forest", gallery_id: gallery17.id)
photo43.photo.attach(io: ph7, filename: "nes.png", content_type: "image/png")
photo43.save
puts "."
photo44 = Photo.new(address: "Forst Grunewald, Berlin", keyword: "forest", gallery_id: gallery17.id)
photo44.photo.attach(io: ph8, filename: "nes.png", content_type: "image/png")
photo44.save
puts "."

photo45 = Photo.new(address: "Grosser Müggelsee, Berlin", keyword: "lake", gallery_id: gallery10.id)
photo45.photo.attach(io: ph9, filename: "nes.png", content_type: "image/png")
photo45.save
puts "."
photo46 = Photo.new(address: "Grosser Müggelsee, Berlin", keyword: "lake", gallery_id: gallery10.id)
photo46.photo.attach(io: ph10, filename: "nes.png", content_type: "image/png")
photo46.save
puts "."
photo47 = Photo.new(address: "Grosser Müggelsee, Berlin", keyword: "lake", gallery_id: gallery10.id)
photo47.photo.attach(io: ph11, filename: "nes.png", content_type: "image/png")
photo47.save
puts "."
photo48 = Photo.new(address: "Grosser Müggelsee, Berlin", keyword: "lake", gallery_id: gallery10.id)
photo48.photo.attach(io: ph12, filename: "nes.png", content_type: "image/png")
photo48.save
puts "."

photo49 = Photo.new(address: "Grosser Müggelsee, Berlin", keyword: "lake", gallery_id: gallery14.id)
photo49.photo.attach(io: ph9, filename: "nes.png", content_type: "image/png")
photo49.save
puts "."
photo50 = Photo.new(address: "Grosser Müggelsee, Berlin", keyword: "lake", gallery_id: gallery14.id)
photo50.photo.attach(io: ph10, filename: "nes.png", content_type: "image/png")
photo50.save
puts "."
photo51 = Photo.new(address: "Grosser Müggelsee, Berlin", keyword: "lake", gallery_id: gallery14.id)
photo51.photo.attach(io: ph11, filename: "nes.png", content_type: "image/png")
photo51.save
puts "."
photo52 = Photo.new(address: "Grosser Müggelsee, Berlin", keyword: "lake", gallery_id: gallery14.id)
photo52.photo.attach(io: ph12, filename: "nes.png", content_type: "image/png")
photo52.save
puts "."

photo53 = Photo.new(address: "Grosser Müggelsee, Berlin", keyword: "lake", gallery_id: gallery16.id)
photo53.photo.attach(io: ph9, filename: "nes.png", content_type: "image/png")
photo53.save
puts "."
photo54 = Photo.new(address: "Grosser Müggelsee, Berlin", keyword: "lake", gallery_id: gallery16.id)
photo54.photo.attach(io: ph10, filename: "nes.png", content_type: "image/png")
photo54.save
puts "."
photo55 = Photo.new(address: "Grosser Müggelsee, Berlin", keyword: "lake", gallery_id: gallery16.id)
photo55.photo.attach(io: ph11, filename: "nes.png", content_type: "image/png")
photo55.save
puts "."
photo56 = Photo.new(address: "Grosser Müggelsee, Berlin", keyword: "lake", gallery_id: gallery16.id)
photo56.photo.attach(io: ph12, filename: "nes.png", content_type: "image/png")
photo56.save
puts "."

photo57 = Photo.new(address: "Grosser Müggelsee, Berlin", keyword: "lake", gallery_id: gallery18.id)
photo57.photo.attach(io: ph9, filename: "nes.png", content_type: "image/png")
photo57.save
puts "."
photo58 = Photo.new(address: "Grosser Müggelsee, Berlin", keyword: "lake", gallery_id: gallery18.id)
photo58.photo.attach(io: ph10, filename: "nes.png", content_type: "image/png")
photo58.save
puts "."
photo59 = Photo.new(address: "Grosser Müggelsee, Berlin", keyword: "lake", gallery_id: gallery18.id)
photo59.photo.attach(io: ph11, filename: "nes.png", content_type: "image/png")
photo59.save
puts "."
photo60 = Photo.new(address: "Grosser Müggelsee, Berlin", keyword: "lake", gallery_id: gallery18.id)
photo60.photo.attach(io: ph12, filename: "nes.png", content_type: "image/png")
photo60.save
puts "."

photo61 = Photo.new(address: "Grosser Müggelsee, Berlin", keyword: "lake", gallery_id: gallery20.id)
photo61.photo.attach(io: ph9, filename: "nes.png", content_type: "image/png")
photo61.save
puts "."
photo62 = Photo.new(address: "Grosser Müggelsee, Berlin", keyword: "lake", gallery_id: gallery20.id)
photo62.photo.attach(io: ph10, filename: "nes.png", content_type: "image/png")
photo62.save
puts "."
photo63 = Photo.new(address: "Grosser Müggelsee, Berlin", keyword: "lake", gallery_id: gallery20.id)
photo63.photo.attach(io: ph11, filename: "nes.png", content_type: "image/png")
photo63.save
puts "."
photo80 = Photo.new(address: "Grosser Müggelsee, Berlin", keyword: "lake", gallery_id: gallery20.id)
photo80.photo.attach(io: ph12, filename: "nes.png", content_type: "image/png")
photo80.save
puts "."

photo64 = Photo.new(address: "Kreuzberg, Berlin", keyword: "people", gallery_id: gallery8.id)
photo64.photo.attach(io: ph13, filename: "nes.png", content_type: "image/png")
photo64.save
puts "."
photo65 = Photo.new(address: "Kreuzberg, Berlin", keyword: "people", gallery_id: gallery8.id)
photo65.photo.attach(io: ph14, filename: "nes.png", content_type: "image/png")
photo65.save
puts "."
photo66 = Photo.new(address: "Kreuzberg, Berlin", keyword: "people", gallery_id: gallery8.id)
photo66.photo.attach(io: ph15, filename: "nes.png", content_type: "image/png")
photo66.save
puts "."
photo67 = Photo.new(address: "Kreuzberg, Berlin", keyword: "people", gallery_id: gallery8.id)
photo67.photo.attach(io: ph16, filename: "nes.png", content_type: "image/png")
photo67.save
puts "."

photo68 = Photo.new(address: "Friedrichschain, Berlin", keyword: "urban", gallery_id: gallery9.id)
photo68.photo.attach(io: ph17, filename: "nes.png", content_type: "image/png")
photo68.save
puts "."
photo69 = Photo.new(address: "Friedrichschain, Berlin", keyword: "urban", gallery_id: gallery9.id)
photo69.photo.attach(io: ph18, filename: "nes.png", content_type: "image/png")
photo69.save
puts "."
photo70 = Photo.new(address: "Friedrichschain, Berlin", keyword: "urban", gallery_id: gallery9.id)
photo70.photo.attach(io: ph19, filename: "nes.png", content_type: "image/png")
photo70.save
puts "."
photo71 = Photo.new(address: "Friedrichschain, Berlin", keyword: "urban", gallery_id: gallery9.id)
photo71.photo.attach(io: ph20, filename: "nes.png", content_type: "image/png")
photo71.save
puts "."

photo72 = Photo.new(address: "Friedrichschain, Berlin", keyword: "urban", gallery_id: gallery15.id)
photo72.photo.attach(io: ph17, filename: "nes.png", content_type: "image/png")
photo72.save
puts "."
photo73 = Photo.new(address: "Friedrichschain, Berlin", keyword: "urban", gallery_id: gallery15.id)
photo73.photo.attach(io: ph18, filename: "nes.png", content_type: "image/png")
photo73.save
puts "."
photo74 = Photo.new(address: "Friedrichschain, Berlin", keyword: "urban", gallery_id: gallery15.id)
photo74.photo.attach(io: ph19, filename: "nes.png", content_type: "image/png")
photo74.save
puts "."
photo75 = Photo.new(address: "Friedrichschain, Berlin", keyword: "urban", gallery_id: gallery15.id)
photo75.photo.attach(io: ph20, filename: "nes.png", content_type: "image/png")
photo75.save
puts "."

photo76 = Photo.new(address: "Friedrichschain, Berlin", keyword: "urban", gallery_id: gallery20.id)
photo76.photo.attach(io: ph17, filename: "nes.png", content_type: "image/png")
photo76.save
puts "."
photo77 = Photo.new(address: "Friedrichschain, Berlin", keyword: "urban", gallery_id: gallery20.id)
photo77.photo.attach(io: ph18, filename: "nes.png", content_type: "image/png")
photo77.save
puts "."
photo78 = Photo.new(address: "Friedrichschain, Berlin", keyword: "urban", gallery_id: gallery20.id)
photo78.photo.attach(io: ph19, filename: "nes.png", content_type: "image/png")
photo78.save
puts "."
photo79 = Photo.new(address: "Friedrichschain, Berlin", keyword: "urban", gallery_id: gallery20.id)
photo79.photo.attach(io: ph20, filename: "nes.png", content_type: "image/png")
photo79.save
puts "."

puts "Creating comments..."

Comment.create!(photo_id: photo1.id, user_id: user12.id, content: "Great work!")
Comment.create!(photo_id: photo1.id, user_id: user3.id, content: "Wow, amazing!")
Comment.create!(photo_id: photo1.id, user_id: user1.id, content: "Haha, thanks people ☺️")
puts "."
Comment.create!(photo_id: photo2.id, user_id: user2.id, content: "Very nice!")
Comment.create!(photo_id: photo2.id, user_id: user4.id, content: "Great work!")
puts "."
Comment.create!(photo_id: photo3.id, user_id: user5.id, content: "Cool shot mate!")
puts "."

Comment.create!(photo_id: photo5.id, user_id: user6.id, content: "Cool shot mate!")
Comment.create!(photo_id: photo5.id, user_id: user1.id, content: "Thanks :)")
puts "."
Comment.create!(photo_id: photo6.id, user_id: user6.id, content: "Great work!")
Comment.create!(photo_id: photo6.id, user_id: user3.id, content: "Wow, amazing!")
Comment.create!(photo_id: photo6.id, user_id: user1.id, content: "Haha, thanks people ☺️")
puts "."
Comment.create!(photo_id: photo8.id, user_id: user6.id, content: "Very nice!")
Comment.create!(photo_id: photo8.id, user_id: user4.id, content: "Great work!")
puts "."

Comment.create!(photo_id: photo10.id, user_id: user6.id, content: "Great work!")
Comment.create!(photo_id: photo10.id, user_id: user5.id, content: "Wow, amazing!")
Comment.create!(photo_id: photo10.id, user_id: user2.id, content: "Haha, thanks people ☺️")
puts "."
Comment.create!(photo_id: photo11.id, user_id: user7.id, content: "Very nice!")
Comment.create!(photo_id: photo11.id, user_id: user8.id, content: "Great work!")
puts "."
Comment.create!(photo_id: photo12.id, user_id: user9.id, content: "Cool shot mate!")
puts "."

Comment.create!(photo_id: photo13.id, user_id: user9.id, content: "Cool shot mate!")
Comment.create!(photo_id: photo13.id, user_id: user2.id, content: "Thanks :)")
puts "."
Comment.create!(photo_id: photo14.id, user_id: user9.id, content: "Great work!")
Comment.create!(photo_id: photo14.id, user_id: user3.id, content: "Wow, amazing!")
Comment.create!(photo_id: photo14.id, user_id: user2.id, content: "Haha, thanks people ☺️")
puts "."
Comment.create!(photo_id: photo15.id, user_id: user2.id, content: "Very nice!")
Comment.create!(photo_id: photo15.id, user_id: user9.id, content: "Great work!")
puts "."

Comment.create!(photo_id: photo17.id, user_id: user10.id, content: "Great work!")
Comment.create!(photo_id: photo17.id, user_id: user12.id, content: "Wow, amazing!")
Comment.create!(photo_id: photo17.id, user_id: user3.id, content: "Haha, thanks people ☺️")
puts "."
Comment.create!(photo_id: photo18.id, user_id: user8.id, content: "Very nice!")
Comment.create!(photo_id: photo18.id, user_id: user1.id, content: "Great work!")
puts "."
Comment.create!(photo_id: photo19.id, user_id: user7.id, content: "Cool shot mate!")
puts "."

Comment.create!(photo_id: photo21.id, user_id: user4.id, content: "Cool shot mate!")
Comment.create!(photo_id: photo21.id, user_id: user3.id, content: "Thanks :)")
puts "."
Comment.create!(photo_id: photo22.id, user_id: user7.id, content: "Great work!")
Comment.create!(photo_id: photo22.id, user_id: user6.id, content: "Wow, amazing!")
Comment.create!(photo_id: photo22.id, user_id: user3.id, content: "Haha, thanks people ☺️")
puts "."
Comment.create!(photo_id: photo23.id, user_id: user8.id, content: "Very nice!")
Comment.create!(photo_id: photo23.id, user_id: user4.id, content: "Great work!")
puts "."

Comment.create!(photo_id: photo25.id, user_id: user10.id, content: "Hey newbie!!! Nice shots!!")
Comment.create!(photo_id: photo25.id, user_id: user4.id, content: "Thanks :)")
Comment.create!(photo_id: photo26.id, user_id: user9.id, content: "Great! Come shoot with us next time")
puts "."

Comment.create!(photo_id: photo29.id, user_id: user9.id, content: "Looks yummy :):):)")
Comment.create!(photo_id: photo29.id, user_id: user5.id, content: "Nice pics")
Comment.create!(photo_id: photo29.id, user_id: user7.id, content: "Thanks a lot!")
puts "."

puts "Creating events..."

# event images
@event_forest_img1 = URI.open("https://images.unsplash.com/photo-1425913397330-cf8af2ff40a1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Zm9yZXN0fGVufDB8MHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=500&q=60")
@event_forest_img2 = URI.open("https://images.unsplash.com/photo-1441974231531-c6227db76b6e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGZvcmVzdHxlbnwwfDB8MHx8fDI%3D&auto=format&fit=crop&w=500&q=60")
@event_forest_img3 = URI.open("https://images.unsplash.com/photo-1516214104703-d870798883c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGZvcmVzdHxlbnwwfDB8MHx8fDI%3D&auto=format&fit=crop&w=500&q=60")
@event_architecture_img1 = URI.open("https://static.trip101.com/paragraph_media/pictures/002/644/817/large/1200px-DZ_Bank_building_in_Berlin___interior.jpg?1661247580")
@event_architecture_img2 = URI.open("https://thelandscapephotoguy.com/wp-content/uploads/2020/02/berlin-biker-1024x576.jpg")
@event_architecture_img3 = URI.open("https://thelandscapephotoguy.com/wp-content/uploads/2020/02/berlin-biker-1024x576.jpg")
@event_portrait_img1 = URI.open("https://images.unsplash.com/photo-1506863530036-1efeddceb993?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cG9ydHJhaXR8fHx8fHwxNjg2NzM5OTQ0&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080")
@event_portrait_img2 = URI.open("https://images.unsplash.com/photo-1560918801-53fe5c710a80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cG9ydHJhaXQlMjBmYXNoaW9ufGVufDB8MHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=500&q=60")
@event_portrait_img3 = URI.open("https://images.unsplash.com/photo-1469334031218-e382a71b716b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjN8fHBvcnRyYWl0JTIwZmFzaGlvbnxlbnwwfDB8MHx8fDI%3D&auto=format&fit=crop&w=500&q=60")
@event_night_img1 = URI.open("https://images.unsplash.com/photo-1498036882173-b41c28a8ba34?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8bmlnaHR8fHx8fHwxNjg2NzQwMTAx&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080")
@event_night_img2 = URI.open("https://images.unsplash.com/photo-1599939571322-792a326991f2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bmlnaHQlMjBjaXR5fGVufDB8fDB8fHwy&auto=format&fit=crop&w=500&q=60")
@event_night_img3 = URI.open("https://images.unsplash.com/photo-1519608487953-e999c86e7455?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fG5pZ2h0JTIwY2l0eXxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=500&q=60")
@event_foodstand_img1 = URI.open("https://images.unsplash.com/photo-1622919946352-8ee892a6cd00?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8c3RyZWV0Zm9vZHxlbnwwfDB8MHx8fDI%3D&auto=format&fit=crop&w=1000&q=60")
@event_foodstand_img2 = URI.open("https://images.unsplash.com/photo-1605333409672-4f7db57ba3a2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8c3RyZWV0Zm9vZHxlbnwwfDB8MHx8fDI%3D&auto=format&fit=crop&w=1000&q=60")
@event_foodstand_img3 = URI.open("https://images.unsplash.com/photo-1464500422302-6188776dcbf3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8c3RyZWV0Zm9vZHxlbnwwfDB8MHx8fDI%3D&auto=format&fit=crop&w=1000&q=60")
@event_pokebowl_img1 = URI.open("https://images.unsplash.com/photo-1670816978291-a5cf23d87968?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cG9rZWJvd2x8ZW58MHwwfDB8fHwy&auto=format&fit=crop&w=1000&q=60")
@event_pokebowl_img2 = URI.open("https://images.unsplash.com/photo-1622119652484-dc8a0311ca90?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cG9rZWJvd2x8ZW58MHwwfDB8fHwy&auto=format&fit=crop&w=1000&q=60")
@event_pokebowl_img3 = URI.open("https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Zm9vZHxlbnwwfDB8MHx8fDI%3D&auto=format&fit=crop&w=500&q=60")
@event_sunset_img1 = URI.open("https://images.unsplash.com/photo-1587642314856-a00a0e4aee60?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8c3Vuc2V0JTIwY2l0eXxlbnwwfDB8MHx8fDI%3D&auto=format&fit=crop&w=500&q=60")
@event_sunset_img2 = URI.open("https://images.unsplash.com/photo-1558438110-46a84252a99c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8c3Vuc2V0JTIwYmVybGlufGVufDB8MHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=500&q=60")
@event_sunset_img3 = URI.open("https://images.unsplash.com/photo-1514519273132-6a1abd48302c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c3Vuc2V0JTIwJTIwc2t5fGVufDB8MHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=500&q=60")
@event_lake_img1 = URI.open("https://images.unsplash.com/photo-1454372182658-c712e4c5a1db?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGxha2V8ZW58MHwwfDB8fHwy&auto=format&fit=crop&w=500&q=60")
@event_lake_img2 = URI.open("https://images.unsplash.com/photo-1453032037654-1f17dd472a6c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bGFrZXxlbnwwfDB8MHx8fDI%3D&auto=format&fit=crop&w=500&q=60")
@event_lake_img3 = URI.open("https://images.unsplash.com/photo-1587677958307-16d24f9c6735?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjN8fGxha2V8ZW58MHwwfDB8fHwy&auto=format&fit=crop&w=500&q=60")

# events
event1 = Event.create!(title: "Forest Shoot", address: "Forst Grunewald, Berlin", date: '07/07/2023, 11:00', description: "Explore the forest and take great shots with amazing sunlight", user_id: user1.id)
event2 = Event.create!(title: "Modern Architecture", address: "Kreuzberg, Berlin", date: '12/07/2023, 12:00', description: "Let's meet in the heart of Berlin and take great shots of Berlin's modern architecture landmarks!", user_id: user2.id)
event3 = Event.create!(title: "Photo Shoot!", address: "Kreuzberg, Berlin", date: '01/07/2023, 10:00', description: "Come and shoot photos of independent designers clothes for free!", user_id: user3.id)
event4 = Event.create!(title: "Berlin by Night", address: "Tiergarten, Berlin", date: '10/08/2023, 10:00', description: "Let's have a night city tour and exchange our thoughts about photography", user_id: user4.id)
event5 = Event.create!(title: "Streetfood Shoot", address: "Eisenbahnstraße 42/43, Berlin", date: '23/08/2023, 10:00', description: "Experience the sweet fragrance and great colors of Berlin's street food.", user_id: user7.id)
event6 = Event.create!(title: "Food & Photography", address: "Mariannenpl. 2, Berlin", date: '24/06/2023, 11:00', description: "Have a taste at the 3 Sister's famous pokebowl, both with your fork and your camera! ", user_id: user7.id)
event7 = Event.create!(title: "Catch the Best Sunsets in Town!", address: "Oberbaumbrücke, Berlin", date: '24/06/2023, 21:00', description: "Come and share this romantic sunset with the best view of Berlin with me!", user_id: user8.id)
event8 = Event.create!(title: "A Day by the Lake", address: "Jagdschloss Grunewald, Berlin", date: '25/06/2023, 08:00', description: "Get out of the city for a day to enjoy the lake. Don't forget to bring your swimsuit!", user_id: user8.id)

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

event5.images.attach(io: @event_foodstand_img1, filename: "event_foodstand_img1.jpg", content_type: "image/jpg")
event5.save
puts "."
event5.images.attach(io: @event_foodstand_img2, filename: "event_foodstand_img2.jpg", content_type: "image/jpg")
event5.save
puts "."
event5.images.attach(io: @event_foodstand_img3, filename: "event_foodstand_img3.jpg", content_type: "image/jpg")
event5.save
puts "."

event6.images.attach(io: @event_pokebowl_img1, filename: "event_pokebowl_img1.jpg", content_type: "image/jpg")
event6.save
puts "."
event6.images.attach(io: @event_pokebowl_img2, filename: "event_pokebowl_img2.jpg", content_type: "image/jpg")
event6.save
puts "."
event6.images.attach(io: @event_pokebowl_img3, filename: "event_pokebowl_img3.jpg", content_type: "image/jpg")
event6.save
puts "."

event7.images.attach(io: @event_sunset_img1, filename: "event_sunset_img1.jpg", content_type: "image/jpg")
event7.save
puts "."
event7.images.attach(io: @event_sunset_img2, filename: "event_sunset_img2.jpg", content_type: "image/jpg")
event7.save
puts "."
event7.images.attach(io: @event_sunset_img3, filename: "event_sunset_img3.jpg", content_type: "image/jpg")
event7.save
puts "."

event8.images.attach(io: @event_lake_img1, filename: "event_lake_img1.jpg", content_type: "image/jpg")
event8.save
puts "."
event8.images.attach(io: @event_lake_img2, filename: "event_lake_img2.jpg", content_type: "image/jpg")
event8.save
puts "."
event8.images.attach(io: @event_lake_img3, filename: "event_lake_img3.jpg", content_type: "image/jpg")
event8.save
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

puts "Creating hot spots...."
# hot spots
spot1_img = URI.open("https://images.unsplash.com/photo-1560969184-10fe8719e047?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8YmVybGlufGVufDB8fDB8fHwy&auto=format&fit=crop&w=500&q=60")
spot2_img = URI.open("https://images.unsplash.com/photo-1496968594384-1736c036e4e6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGJlcmxpbnxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=500&q=60")
spot3_img = URI.open("https://images.unsplash.com/photo-1551354099-068f333a4e8f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzd8fGJlcmxpbnxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=500&q=60")
spot4_img = URI.open("https://images.unsplash.com/photo-1574439711512-a43a0fa9fabe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGJlcmxpbiUyMG1hdWVycGFya3xlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=500&q=60")

spot1 = HotSpot.new(comment: "A classic in Berlin", address: "Pariser Platz, Berlin", user_id: user1.id)
spot1.photo.attach(io: spot1_img, filename: "spot1.png", content_type: "image/png")
spot1.save!
spot2 = HotSpot.new(comment: "The metro lines are really great to shoot here", address: "Burgermeister, Skalitzer Str. 136, Berlin", user_id: user2.id)
spot2.photo.attach(io: spot2_img, filename: "spot2.png", content_type: "image/png")
spot2.save!
spot3 = HotSpot.new(comment: "Yet another historical landmark", address: "Kreuzberg, Berlin", user_id: user3.id)
spot3.photo.attach(io: spot3_img, filename: "spot3.png", content_type: "image/png")
spot3.save!
spot4 = HotSpot.new(comment: "Enjoy the social atmosphere at Mauer Park", address: "Mauerpark, Schwedter Str., Berlin", user_id: user4.id)
spot4.photo.attach(io: spot4_img, filename: "spot4.png", content_type: "image/png")
spot4.save!

puts "Creating likes..."
# likes
users = User.all
USER_IDS = []
users.each { |user| USER_IDS << user.id }
photos = Photo.all
PHOTO_IDS = []
photos.each { |photo| PHOTO_IDS << photo.id }
50.times do
  Like.create!(user_id: USER_IDS.sample, photo_id: PHOTO_IDS.sample)
end

puts "Seeding complete!"

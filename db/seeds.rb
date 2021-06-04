require 'open-uri'

Booking.destroy_all
Racket.destroy_all
User.destroy_all

puts "Creating users..."
  benjamin = User.create(email: "benj@test.com", password: "123456", first_name: "Benjamin", last_name: "Kennedy")
  lisa = User.create(email: "lisa@test.com", password: "123456", first_name: "Lisa", last_name: "Simpson")
  jimmy = User.create(email: "jimmy@test.com", password: "123456", first_name: "Jimmy", last_name: "Cat")

puts "Creating rackets..."
  file = URI.open('https://tennishead.net/wp-content/uploads/2020/09/Wilson-Clash-100-Roland-Garros.jpeg')
  rafael = Racket.create(name: "Rafael Nadal Pure Aero", location: "Lisbon", description: "Maximise your spin and prepare for competition. With Pure Aero Rafa everything is possible - play every angle... and beat any opponent!", brand: "babolat", user: benjamin)
  rafael.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

  file = URI.open('https://images.unsplash.com/photo-1613586516733-1cb124e3b025?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1504&q=80')
  clash = Racket.create(name: "Racket Clash 100L", location: "London", description: "This racket was designed for advanced tennis players looking for a precise racket that is easy to handle!", brand: "Wilson", user: lisa)
  clash.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

  file = URI.open('https://www.goldgenie.com/wp-content/uploads/2016/09/tennis_racket_gold_1.jpg')
  tour = Racket.create(name: "Tour 100P", location: "New York", description: "Prince rackets are among the most flexible on the market. They offer pinpoint control and a buttery flex at impact.", brand: "Prince", user: jimmy)
  tour.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

  file = URI.open('https://s01.sgp1.cdn.digitaloceanspaces.com/article/135061-hcbvaxhryh-1579677947.jpg')
  attitude = Racket.create(name: "Attitude Pro", location: "Nottingham", description: "This all-court racket is recommended for real versatility on the court by Andy Murray.", brand: "Head", user:lisa)
  attitude.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

  file = URI.open('https://tennispredict.com/wp-content/uploads/2019/10/4750867331_ab32b669f2_b.jpg')
  smash = Racket.create(name: "Smash Tennis 2.0", location: "Newcastle", description: "This racket features a lightweight alloy frame with cushioned grip for excellent control and power.", brand: "Slazenger", user: benjamin)
  smash.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

  file = URI.open('https://www.pdhsports.com/files/uk/blogs/original/2FC7G1J2-tennisracketblog.jpg')
  ultra = Racket.create(name: "Ultra Power Team", location: "Liverpool", description: "Wilson has been a leader in the tennis industry for over a century, continually pushing the limitations of innovation and creativity.", brand: "Wilson", user: lisa)
  ultra.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

  file = URI.open('https://tennisnerd.net/wp-content/uploads/2015/06/IMG_1622.jpg')
  drive = Racket.create(name: "Pure Drive", location: "Bristol", description: "The Babolat Pure Drive series epitomizes the modern power game. Combining a thick and lively beam construction with an open string patter.", brand: "Babolat", user: jimmy)
  drive.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

  file = URI.open('https://images.ctfassets.net/3s5io6mnxfqz/U4SvIlSdqGGAvhUd80Fss/4e443a90863fecef30397681aff5bec9/AdobeStock_173008995.jpeg')
  aero = Racket.create(name: "Aero Infinity", location: "Hoxton", description: "This tennis racquet is used by several international tennis players, like Oliver Golding, Johan Brunström.", brand: "Prince", user: jimmy)
  aero.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')


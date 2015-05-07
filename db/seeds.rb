# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Album.delete_all
Artist.delete_all
Review.delete_all
Track.delete_all
User.delete_all

[{name: "Bruce Springsteen"},
{name: "Miles Davis"},
{name: "Van Morrison"},
{name: "David Bowie"},
{name: "Radiohead"},
{name: "Prince"},
{name: "Huey Lewis & The News"}
].each do |artist_hash|
	a = Artist.new
	a.name = artist_hash[:name]
	a.save
end

[{artist_id: (Artist.find_by("name = 'Bruce Springsteen'")).id, title: "Born To Run", rating: 5, year: 1975, album_cover_url: "http://assets.rollingstone.com/assets/images/list/1ccdff7c10d78ca236e7272be46db2562737945a.JPG"},
{artist_id: (Artist.find_by("name = 'Miles Davis'")).id, title: "Kind Of Blue", rating: 5, year: 1959, album_cover_url: "http://upload.wikimedia.org/wikipedia/en/9/9c/MilesDavisKindofBlue.jpg"},
{artist_id: (Artist.find_by("name = 'Van Morrison'")).id, title: "Astral Weeks", rating: 4, year: 1968, album_cover_url: "http://upload.wikimedia.org/wikipedia/en/f/f7/VanMorrisonAstralWeeks.jpg"},
{artist_id: (Artist.find_by("name = 'David Bowie'")).id, title: "The Rise And Fall Of Ziggy Stardust And The Spiders From Mars", rating: 3, year: 1972, album_cover_url: "http://upload.wikimedia.org/wikipedia/en/0/01/ZiggyStardust.jpg"},
{artist_id: (Artist.find_by("name = 'Radiohead'")).id, title: "OK Computer", rating: 4, year: 1997, album_cover_url: "http://upload.wikimedia.org/wikipedia/en/thumb/a/a1/Radiohead.okcomputer.albumart.jpg/220px-Radiohead.okcomputer.albumart.jpg"},
{artist_id: (Artist.find_by("name = 'Prince'")).id, title: "1999", rating: 4, year: 1982, album_cover_url: "http://upload.wikimedia.org/wikipedia/en/thumb/c/cb/1999_cover.jpg/220px-1999_cover.jpg"},
{artist_id: (Artist.find_by("name = 'Huey Lewis & The News'")).id, title: "Fore!", rating: 2, year: 1986, album_cover_url: "http://upload.wikimedia.org/wikipedia/en/6/68/Huey_Lewis_%26_The_News_Fore%21_CD_cover.JPG"}
].each do |album_hash|
	al = Album.new
	al.artist_id = album_hash[:artist_id]
	al.title = album_hash[:title]
	al.rating = album_hash[:rating]
	al.year = album_hash[:year]
	al.album_cover_url = album_hash[:album_cover_url]
	al.save
end

[{name: "Thunder Road", artist_id: (Artist.find_by("name = 'Bruce Springsteen'")).id, album_id: (Album.find_by("title = 'Born To Run'")).id},
{name: "Tenth Avenue Freeze-Out", artist_id: (Artist.find_by("name = 'Bruce Springsteen'")).id, album_id: (Album.find_by("title = 'Born To Run'")).id},
{name: "Night", artist_id: (Artist.find_by("name = 'Bruce Springsteen'")).id, album_id: (Album.find_by("title = 'Born To Run'")).id},
{name: "Backstreets", artist_id: (Artist.find_by("name = 'Bruce Springsteen'")).id, album_id: (Album.find_by("title = 'Born To Run'")).id},
{name: "Born To Run", artist_id: (Artist.find_by("name = 'Bruce Springsteen'")).id, album_id: (Album.find_by("title = 'Born To Run'")).id},
{name: "She's The One", artist_id: (Artist.find_by("name = 'Bruce Springsteen'")).id, album_id: (Album.find_by("title = 'Born To Run'")).id},
{name: "Meeting Across The River", artist_id: (Artist.find_by("name = 'Bruce Springsteen'")).id, album_id: (Album.find_by("title = 'Born To Run'")).id},
{name: "Jungleland", artist_id: (Artist.find_by("name = 'Bruce Springsteen'")).id, album_id: (Album.find_by("title = 'Born To Run'")).id},
{name: "So What", artist_id: (Artist.find_by("name = 'Miles Davis'")).id, album_id: (Album.find_by("title = 'Kind Of Blue'")).id},
{name: "Freddie Freeloader", artist_id: (Artist.find_by("name = 'Miles Davis'")).id, album_id: (Album.find_by("title = 'Kind Of Blue'")).id},
{name: "Blue In Green", artist_id: (Artist.find_by("name = 'Miles Davis'")).id, album_id: (Album.find_by("title = 'Kind Of Blue'")).id},
{name: "All Blues", artist_id: (Artist.find_by("name = 'Miles Davis'")).id, album_id: (Album.find_by("title = 'Kind Of Blue'")).id},
{name: "Flamenco Sketches", artist_id: (Artist.find_by("name = 'Miles Davis'")).id, album_id: (Album.find_by("title = 'Kind Of Blue'")).id},
{name: "Flamenco Sketches (Alternate Take)", artist_id: (Artist.find_by("name = 'Miles Davis'")).id, album_id: (Album.find_by("title = 'Kind Of Blue'")).id},
{name: "Astral Weeks", artist_id: (Artist.find_by("name = 'Van Morrison'")).id, album_id: (Album.find_by("title = 'Astral Weeks'")).id},
{name: "Beside You", artist_id: (Artist.find_by("name = 'Van Morrison'")).id, album_id: (Album.find_by("title = 'Astral Weeks'")).id},
{name: "Sweet Thing", artist_id: (Artist.find_by("name = 'Van Morrison'")).id, album_id: (Album.find_by("title = 'Astral Weeks'")).id},
{name: "Cyprus Avenue", artist_id: (Artist.find_by("name = 'Van Morrison'")).id, album_id: (Album.find_by("title = 'Astral Weeks'")).id},
{name: "The Way Young Lovers Do", artist_id: (Artist.find_by("name = 'Van Morrison'")).id, album_id: (Album.find_by("title = 'Astral Weeks'")).id},
{name: "Madame George", artist_id: (Artist.find_by("name = 'Van Morrison'")).id, album_id: (Album.find_by("title = 'Astral Weeks'")).id},
{name: "Ballerina", artist_id: (Artist.find_by("name = 'Van Morrison'")).id, album_id: (Album.find_by("title = 'Astral Weeks'")).id},
{name: "Slim Slow Slider", artist_id: (Artist.find_by("name = 'Van Morrison'")).id, album_id: (Album.find_by("title = 'Astral Weeks'")).id},
{name: "Five Years", artist_id: (Artist.find_by("name = 'David Bowie'")).id, album_id: (Album.find_by("title = 'The Rise And Fall Of Ziggy Stardust And The Spiders From Mars'")).id},
{name: "Soul Love", artist_id: (Artist.find_by("name = 'David Bowie'")).id, album_id: (Album.find_by("title = 'The Rise And Fall Of Ziggy Stardust And The Spiders From Mars'")).id},
{name: "Moonage Daydream", artist_id: (Artist.find_by("name = 'David Bowie'")).id, album_id: (Album.find_by("title = 'The Rise And Fall Of Ziggy Stardust And The Spiders From Mars'")).id},
{name: "Starman", artist_id: (Artist.find_by("name = 'David Bowie'")).id, album_id: (Album.find_by("title = 'The Rise And Fall Of Ziggy Stardust And The Spiders From Mars'")).id},
{name: "It Ain't Easy", artist_id: (Artist.find_by("name = 'David Bowie'")).id, album_id: (Album.find_by("title = 'The Rise And Fall Of Ziggy Stardust And The Spiders From Mars'")).id},
{name: "Lady Stardust", artist_id: (Artist.find_by("name = 'David Bowie'")).id, album_id: (Album.find_by("title = 'The Rise And Fall Of Ziggy Stardust And The Spiders From Mars'")).id},
{name: "Star", artist_id: (Artist.find_by("name = 'David Bowie'")).id, album_id: (Album.find_by("title = 'The Rise And Fall Of Ziggy Stardust And The Spiders From Mars'")).id},
{name: "Hang On To Yourself", artist_id: (Artist.find_by("name = 'David Bowie'")).id, album_id: (Album.find_by("title = 'The Rise And Fall Of Ziggy Stardust And The Spiders From Mars'")).id},
{name: "Ziggy Stardust", artist_id: (Artist.find_by("name = 'David Bowie'")).id, album_id: (Album.find_by("title = 'The Rise And Fall Of Ziggy Stardust And The Spiders From Mars'")).id},
{name: "Suffragette City", artist_id: (Artist.find_by("name = 'David Bowie'")).id, album_id: (Album.find_by("title = 'The Rise And Fall Of Ziggy Stardust And The Spiders From Mars'")).id},
{name: "Rock 'n' Roll Suicide", artist_id: (Artist.find_by("name = 'David Bowie'")).id, album_id: (Album.find_by("title = 'The Rise And Fall Of Ziggy Stardust And The Spiders From Mars'")).id},
{name: "Airbag", artist_id: (Artist.find_by("name = 'Radiohead'")).id, album_id: (Album.find_by("title = 'OK Computer'")).id},
{name: "Paranoid Android", artist_id: (Artist.find_by("name = 'Radiohead'")).id, album_id: (Album.find_by("title = 'OK Computer'")).id},
{name: "Subterranean Homesick Alien", artist_id: (Artist.find_by("name = 'Radiohead'")).id, album_id: (Album.find_by("title = 'OK Computer'")).id},
{name: "Exit Music (For A Film)", artist_id: (Artist.find_by("name = 'Radiohead'")).id, album_id: (Album.find_by("title = 'OK Computer'")).id},
{name: "Let Down", artist_id: (Artist.find_by("name = 'Radiohead'")).id, album_id: (Album.find_by("title = 'OK Computer'")).id},
{name: "Karma Police", artist_id: (Artist.find_by("name = 'Radiohead'")).id, album_id: (Album.find_by("title = 'OK Computer'")).id},
{name: "Fitter Happier", artist_id: (Artist.find_by("name = 'Radiohead'")).id, album_id: (Album.find_by("title = 'OK Computer'")).id},
{name: "Electioneering", artist_id: (Artist.find_by("name = 'Radiohead'")).id, album_id: (Album.find_by("title = 'OK Computer'")).id},
{name: "Climbing Up The Walls", artist_id: (Artist.find_by("name = 'Radiohead'")).id, album_id: (Album.find_by("title = 'OK Computer'")).id},
{name: "No Surprises", artist_id: (Artist.find_by("name = 'Radiohead'")).id, album_id: (Album.find_by("title = 'OK Computer'")).id},
{name: "Lucky", artist_id: (Artist.find_by("name = 'Radiohead'")).id, album_id: (Album.find_by("title = 'OK Computer'")).id},
{name: "The Tourist", artist_id: (Artist.find_by("name = 'Radiohead'")).id, album_id: (Album.find_by("title = 'OK Computer'")).id},
{name: "1999", artist_id: (Artist.find_by("name = 'Prince'")).id, album_id: (Album.find_by("title = '1999'")).id},
{name: "Little Red Corvette", artist_id: (Artist.find_by("name = 'Prince'")).id, album_id: (Album.find_by("title = '1999'")).id},
{name: "Delirious", artist_id: (Artist.find_by("name = 'Prince'")).id, album_id: (Album.find_by("title = '1999'")).id},
{name: "Let's Pretend We're Married", artist_id: (Artist.find_by("name = 'Prince'")).id, album_id: (Album.find_by("title = '1999'")).id},
{name: "D.M.S.R.", artist_id: (Artist.find_by("name = 'Prince'")).id, album_id: (Album.find_by("title = '1999'")).id},
{name: "Automatic", artist_id: (Artist.find_by("name = 'Prince'")).id, album_id: (Album.find_by("title = '1999'")).id},
{name: "Something In The Water (Does Not Compute", artist_id: (Artist.find_by("name = 'Prince'")).id, album_id: (Album.find_by("title = '1999'")).id},
{name: "Free", artist_id: (Artist.find_by("name = 'Prince'")).id, album_id: (Album.find_by("title = '1999'")).id},
{name: "Lady Cab Driver", artist_id: (Artist.find_by("name = 'Prince'")).id, album_id: (Album.find_by("title = '1999'")).id},
{name: "All The Critics Love U New York", artist_id: (Artist.find_by("name = 'Prince'")).id, album_id: (Album.find_by("title = '1999'")).id},
{name: "International Lover", artist_id: (Artist.find_by("name = 'Prince'")).id, album_id: (Album.find_by("title = '1999'")).id},
{name: "Jacob's Ladder", artist_id: (Artist.find_by("name = 'Huey Lewis & The News'")).id, album_id: (Album.find_by("title = 'Fore!'")).id},
{name: "Stuck With You", artist_id: (Artist.find_by("name = 'Huey Lewis & The News'")).id, album_id: (Album.find_by("title = 'Fore!'")).id},
{name: "Whole Lotta Lovin'", artist_id: (Artist.find_by("name = 'Huey Lewis & The News'")).id, album_id: (Album.find_by("title = 'Fore!'")).id},
{name: "Doing It All For My Baby", artist_id: (Artist.find_by("name = 'Huey Lewis & The News'")).id, album_id: (Album.find_by("title = 'Fore!'")).id},
{name: "Hip To Be Square", artist_id: (Artist.find_by("name = 'Huey Lewis & The News'")).id, album_id: (Album.find_by("title = 'Fore!'")).id},
{name: "I Know What I Like", artist_id: (Artist.find_by("name = 'Huey Lewis & The News'")).id, album_id: (Album.find_by("title = 'Fore!'")).id},
{name: "I Never Walk Alone", artist_id: (Artist.find_by("name = 'Huey Lewis & The News'")).id, album_id: (Album.find_by("title = 'Fore!'")).id},
{name: "Forest For The Trees", artist_id: (Artist.find_by("name = 'Huey Lewis & The News'")).id, album_id: (Album.find_by("title = 'Fore!'")).id},
{name: "Naturally", artist_id: (Artist.find_by("name = 'Huey Lewis & The News'")).id, album_id: (Album.find_by("title = 'Fore!'")).id},
{name: "Simple As That", artist_id: (Artist.find_by("name = 'Huey Lewis & The News'")).id, album_id: (Album.find_by("title = 'Fore!'")).id}
].each do |track_hash|
	t = Track.new
	t.name = track_hash[:name]
	t.artist_id = track_hash[:artist_id]
	t.album_id = track_hash[:album_id]
	t.save
end

[{username: "cmccanna", password: "password", name: "Casey McCanna"},
{username: "american_psycho", password: "password", name: "Patrick Bateman"},
{username: "jdoe", password: "password", name: "John Doe"}
].each do |user_hash|
	u = User.new
	u.username = user_hash[:username]
	u.password = user_hash[:password]
	u.name = user_hash[:name]
	u.save
end

[{album_id: (Album.find_by("title = 'Born To Run'")).id, user_id: (User.find_by("username = 'cmccanna'")).id, rating: 5, desc: "One of the best rock albums of all time!"},
{album_id: (Album.find_by("title = 'Kind Of Blue'")).id, user_id: (User.find_by("username = 'jdoe'")).id, rating: 4, desc: "Miles, Coltrane, Bill Evans, and Cannonball Adderley on one album?!"},
{album_id: (Album.find_by("title = 'Astral Weeks'")).id, user_id: (User.find_by("username = 'cmccanna'")).id, rating: 5, desc: "Transcendental!"},
{album_id: (Album.find_by("title = 'The Rise And Fall Of Ziggy Stardust And The Spiders From Mars'")).id, user_id: (User.find_by("username = 'jdoe'")).id, rating: 5, desc: "What a great album!"},
{album_id: (Album.find_by("title = 'OK Computer'")).id, user_id: (User.find_by("username = 'cmccanna'")).id, rating: 5, desc: "Best album of the 90s"},
{album_id: (Album.find_by("title = '1999'")).id, user_id: (User.find_by("username = 'jdoe'")).id, rating: 4, desc: "So funky!"},
{album_id: (Album.find_by("title = 'Fore!'")).id, user_id: (User.find_by("username = 'american_psycho'")).id, rating: 5, desc: "Their early work was a little too new wave for my tastes, but when Sports came out in '83, I think they really came into their own, commercially and artistically. The whole album has a clear, crisp sound, and a new sheen of consummate professionalism that really gives the songs a big boost. He's been compared to Elvis Costello, but I think Huey has a far more bitter, cynical sense of humor. In '87, Huey released this, Fore, their most accomplished album. I think their undisputed masterpiece is \"Hip to be Square\", a song so catchy, most people probably don't listen to the lyrics. But they should, because it's not just about the pleasures of conformity, and the importance of trends, it's also a personal statement about the band itself."}
].each do |review_hash|
	r = Review.new
	r.album_id = review_hash[:album_id]
	r.user_id = review_hash[:user_id]
	r.rating = review_hash[:rating]
	r.desc = review_hash[:desc]
	r.save
end

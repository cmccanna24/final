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

[{artist_id: (Artist.find_by("name = 'Bruce Springsteen'")).id, title: "Born To Run", rating: 5, year: 1975, album_cover_url: "http://assets.rollingstone.com/assets/images/list/1ccdff7c10d78ca236e7272be46db2562737945a.JPG", rating_count: 27},
{artist_id: (Artist.find_by("name = 'Miles Davis'")).id, title: "Kind Of Blue", rating: 5, year: 1959, album_cover_url: "http://upload.wikimedia.org/wikipedia/en/9/9c/MilesDavisKindofBlue.jpg", rating_count: 14},
{artist_id: (Artist.find_by("name = 'Van Morrison'")).id, title: "Astral Weeks", rating: 4, year: 1968, album_cover_url: "http://upload.wikimedia.org/wikipedia/en/f/f7/VanMorrisonAstralWeeks.jpg", rating_count: 18},
{artist_id: (Artist.find_by("name = 'David Bowie'")).id, title: "The Rise And Fall Of Ziggy Stardust And The Spiders From Mars", rating: 3, year: 1972, album_cover_url: "http://upload.wikimedia.org/wikipedia/en/0/01/ZiggyStardust.jpg", rating_count: 21},
{artist_id: (Artist.find_by("name = 'Radiohead'")).id, title: "OK Computer", rating: 4, year: 1997, album_cover_url: "http://upload.wikimedia.org/wikipedia/en/thumb/a/a1/Radiohead.okcomputer.albumart.jpg/220px-Radiohead.okcomputer.albumart.jpg", rating_count: 25},
{artist_id: (Artist.find_by("name = 'Prince'")).id, title: "1999", rating: 4, year: 1982, album_cover_url: "http://upload.wikimedia.org/wikipedia/en/thumb/c/cb/1999_cover.jpg/220px-1999_cover.jpg", rating_count: 19},
{artist_id: (Artist.find_by("name = 'Huey Lewis & The News'")).id, title: "Fore!", rating: 2, year: 1986, album_cover_url: "http://upload.wikimedia.org/wikipedia/en/6/68/Huey_Lewis_%26_The_News_Fore%21_CD_cover.JPG", rating_count: 9}
].each do |album_hash|
	al = Album.new
	al.artist_id = album_hash[:artist_id]
	al.title = album_hash[:title]
	al.rating = album_hash[:rating]
	al.year = album_hash[:year]
	al.album_cover_url = album_hash[:album_cover_url]
	al.rating_count = album_hash[:rating_count]
	al.save
end

[{name: "Thunder Road", album_id: (Album.find_by("title = 'Born To Run'")).id},
{name: "Tenth Avenue Freeze-Out", album_id: (Album.find_by("title = 'Born To Run'")).id},
{name: "Night", album_id: (Album.find_by("title = 'Born To Run'")).id},
{name: "Backstreets", album_id: (Album.find_by("title = 'Born To Run'")).id},
{name: "Born To Run", album_id: (Album.find_by("title = 'Born To Run'")).id},
{name: "She's The One", album_id: (Album.find_by("title = 'Born To Run'")).id},
{name: "Meeting Across The River", album_id: (Album.find_by("title = 'Born To Run'")).id},
{name: "Jungleland", album_id: (Album.find_by("title = 'Born To Run'")).id},
{name: "So What", album_id: (Album.find_by("title = 'Kind Of Blue'")).id},
{name: "Freddie Freeloader", album_id: (Album.find_by("title = 'Kind Of Blue'")).id},
{name: "Blue In Green", album_id: (Album.find_by("title = 'Kind Of Blue'")).id},
{name: "All Blues", album_id: (Album.find_by("title = 'Kind Of Blue'")).id},
{name: "Flamenco Sketches", album_id: (Album.find_by("title = 'Kind Of Blue'")).id},
{name: "Flamenco Sketches (Alternate Take)", album_id: (Album.find_by("title = 'Kind Of Blue'")).id},
{name: "Astral Weeks", album_id: (Album.find_by("title = 'Astral Weeks'")).id},
{name: "Beside You", album_id: (Album.find_by("title = 'Astral Weeks'")).id},
{name: "Sweet Thing", album_id: (Album.find_by("title = 'Astral Weeks'")).id},
{name: "Cyprus Avenue", album_id: (Album.find_by("title = 'Astral Weeks'")).id},
{name: "The Way Young Lovers Do", album_id: (Album.find_by("title = 'Astral Weeks'")).id},
{name: "Madame George", album_id: (Album.find_by("title = 'Astral Weeks'")).id},
{name: "Ballerina", album_id: (Album.find_by("title = 'Astral Weeks'")).id},
{name: "Slim Slow Slider", album_id: (Album.find_by("title = 'Astral Weeks'")).id},
{name: "Five Years", album_id: (Album.find_by("title = 'The Rise And Fall Of Ziggy Stardust And The Spiders From Mars'")).id},
{name: "Soul Love", album_id: (Album.find_by("title = 'The Rise And Fall Of Ziggy Stardust And The Spiders From Mars'")).id},
{name: "Moonage Daydream", album_id: (Album.find_by("title = 'The Rise And Fall Of Ziggy Stardust And The Spiders From Mars'")).id},
{name: "Starman", album_id: (Album.find_by("title = 'The Rise And Fall Of Ziggy Stardust And The Spiders From Mars'")).id},
{name: "It Ain't Easy", album_id: (Album.find_by("title = 'The Rise And Fall Of Ziggy Stardust And The Spiders From Mars'")).id},
{name: "Lady Stardust", album_id: (Album.find_by("title = 'The Rise And Fall Of Ziggy Stardust And The Spiders From Mars'")).id},
{name: "Star", album_id: (Album.find_by("title = 'The Rise And Fall Of Ziggy Stardust And The Spiders From Mars'")).id},
{name: "Hang On To Yourself", album_id: (Album.find_by("title = 'The Rise And Fall Of Ziggy Stardust And The Spiders From Mars'")).id},
{name: "Ziggy Stardust", album_id: (Album.find_by("title = 'The Rise And Fall Of Ziggy Stardust And The Spiders From Mars'")).id},
{name: "Suffragette City", album_id: (Album.find_by("title = 'The Rise And Fall Of Ziggy Stardust And The Spiders From Mars'")).id},
{name: "Rock 'n' Roll Suicide", album_id: (Album.find_by("title = 'The Rise And Fall Of Ziggy Stardust And The Spiders From Mars'")).id},
{name: "Airbag", album_id: (Album.find_by("title = 'OK Computer'")).id},
{name: "Paranoid Android", album_id: (Album.find_by("title = 'OK Computer'")).id},
{name: "Subterranean Homesick Alien", album_id: (Album.find_by("title = 'OK Computer'")).id},
{name: "Exit Music (For A Film)", album_id: (Album.find_by("title = 'OK Computer'")).id},
{name: "Let Down", album_id: (Album.find_by("title = 'OK Computer'")).id},
{name: "Karma Police", album_id: (Album.find_by("title = 'OK Computer'")).id},
{name: "Fitter Happier", album_id: (Album.find_by("title = 'OK Computer'")).id},
{name: "Electioneering", album_id: (Album.find_by("title = 'OK Computer'")).id},
{name: "Climbing Up The Walls", album_id: (Album.find_by("title = 'OK Computer'")).id},
{name: "No Surprises", album_id: (Album.find_by("title = 'OK Computer'")).id},
{name: "Lucky", album_id: (Album.find_by("title = 'OK Computer'")).id},
{name: "The Tourist", album_id: (Album.find_by("title = 'OK Computer'")).id},
{name: "1999", album_id: (Album.find_by("title = '1999'")).id},
{name: "Little Red Corvette", album_id: (Album.find_by("title = '1999'")).id},
{name: "Delirious", album_id: (Album.find_by("title = '1999'")).id},
{name: "Let's Pretend We're Married", album_id: (Album.find_by("title = '1999'")).id},
{name: "D.M.S.R.", album_id: (Album.find_by("title = '1999'")).id},
{name: "Automatic", album_id: (Album.find_by("title = '1999'")).id},
{name: "Something In The Water (Does Not Compute)", album_id: (Album.find_by("title = '1999'")).id},
{name: "Free", album_id: (Album.find_by("title = '1999'")).id},
{name: "Lady Cab Driver", album_id: (Album.find_by("title = '1999'")).id},
{name: "All The Critics Love U New York", album_id: (Album.find_by("title = '1999'")).id},
{name: "International Lover", album_id: (Album.find_by("title = '1999'")).id},
{name: "Jacob's Ladder", album_id: (Album.find_by("title = 'Fore!'")).id},
{name: "Stuck With You", album_id: (Album.find_by("title = 'Fore!'")).id},
{name: "Whole Lotta Lovin'", album_id: (Album.find_by("title = 'Fore!'")).id},
{name: "Doing It All For My Baby", album_id: (Album.find_by("title = 'Fore!'")).id},
{name: "Hip To Be Square", album_id: (Album.find_by("title = 'Fore!'")).id},
{name: "I Know What I Like", album_id: (Album.find_by("title = 'Fore!'")).id},
{name: "I Never Walk Alone", album_id: (Album.find_by("title = 'Fore!'")).id},
{name: "Forest For The Trees", album_id: (Album.find_by("title = 'Fore!'")).id},
{name: "Naturally", album_id: (Album.find_by("title = 'Fore!'")).id},
{name: "Simple As That", album_id: (Album.find_by("title = 'Fore!'")).id}
].each do |track_hash|
	t = Track.new
	t.name = track_hash[:name]
	t.album_id = track_hash[:album_id]
	t.save
end

[{username: "cmccanna", password: "password"},
{username: "american_psycho", password: "password"},
{username: "jdoe", password: "password"}
].each do |user_hash|
	u = User.new
	u.username = user_hash[:username]
	u.password = user_hash[:password]
	u.save
end

[{album_id: (Album.find_by("title = 'Born To Run'")).id, user_id: (User.find_by("username = 'cmccanna'")).id, rating: 5, desc: "One of the best rock albums of all time!", rank: 3},
{album_id: (Album.find_by("title = 'Kind Of Blue'")).id, user_id: (User.find_by("username = 'jdoe'")).id, rating: 4, desc: "Miles, Coltrane, Bill Evans, and Cannonball Adderley on one album?!", rank: 2},
{album_id: (Album.find_by("title = 'Astral Weeks'")).id, user_id: (User.find_by("username = 'cmccanna'")).id, rating: 5, desc: "Transcendental!", rank: 9},
{album_id: (Album.find_by("title = 'The Rise And Fall Of Ziggy Stardust And The Spiders From Mars'")).id, user_id: (User.find_by("username = 'jdoe'")).id, rating: 5, desc: "What a great album!", rank: 12},
{album_id: (Album.find_by("title = 'OK Computer'")).id, user_id: (User.find_by("username = 'cmccanna'")).id, rating: 5, desc: "Best album of the 90s", rank: 15},
{album_id: (Album.find_by("title = '1999'")).id, user_id: (User.find_by("username = 'jdoe'")).id, rating: 4, desc: "So funky!", rank: 6},
{album_id: (Album.find_by("title = 'Fore!'")).id, user_id: (User.find_by("username = 'american_psycho'")).id, rating: 5, desc: "Their early work was a little too new wave for my tastes, but when Sports came out in '83, I think they really came into their own, commercially and artistically. The whole album has a clear, crisp sound, and a new sheen of consummate professionalism that really gives the songs a big boost. He's been compared to Elvis Costello, but I think Huey has a far more bitter, cynical sense of humor. In '87, Huey released this, Fore, their most accomplished album. I think their undisputed masterpiece is \"Hip to be Square\", a song so catchy, most people probably don't listen to the lyrics. But they should, because it's not just about the pleasures of conformity, and the importance of trends, it's also a personal statement about the band itself.", rank: 25}
].each do |review_hash|
	r = Review.new
	r.album_id = review_hash[:album_id]
	r.user_id = review_hash[:user_id]
	r.rating = review_hash[:rating]
	r.desc = review_hash[:desc]
	r.rank = review_hash[:rank]
	r.save
end

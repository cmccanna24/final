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
Tag.delete_all
Description.delete_all
Collection.delete_all

User.create username: 'cmccanna', password: 'password'
User.create username: 'american_psycho', password: 'password'
User.create username: 'jdoe', password: 'password'

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

[{artist_id: (Artist.find_by("name = 'Bruce Springsteen'")).id, title: "Born To Run", rating: 5, year: 1975, album_cover_url: "http://assets.rollingstone.com/assets/images/list/1ccdff7c10d78ca236e7272be46db2562737945a.JPG", rating_count: 1},
{artist_id: (Artist.find_by("name = 'Miles Davis'")).id, title: "Kind Of Blue", rating: 4, year: 1959, album_cover_url: "http://upload.wikimedia.org/wikipedia/en/9/9c/MilesDavisKindofBlue.jpg", rating_count: 1},
{artist_id: (Artist.find_by("name = 'Van Morrison'")).id, title: "Astral Weeks", rating: 5, year: 1968, album_cover_url: "http://upload.wikimedia.org/wikipedia/en/f/f7/VanMorrisonAstralWeeks.jpg", rating_count: 1},
{artist_id: (Artist.find_by("name = 'David Bowie'")).id, title: "The Rise And Fall Of Ziggy Stardust And The Spiders From Mars", rating: 3, year: 1972, album_cover_url: "http://upload.wikimedia.org/wikipedia/en/0/01/ZiggyStardust.jpg", rating_count: 1},
{artist_id: (Artist.find_by("name = 'Radiohead'")).id, title: "OK Computer", rating: 5, year: 1997, album_cover_url: "http://upload.wikimedia.org/wikipedia/en/thumb/a/a1/Radiohead.okcomputer.albumart.jpg/220px-Radiohead.okcomputer.albumart.jpg", rating_count: 1},
{artist_id: (Artist.find_by("name = 'Prince'")).id, title: "1999", rating: 4, year: 1982, album_cover_url: "http://upload.wikimedia.org/wikipedia/en/thumb/c/cb/1999_cover.jpg/220px-1999_cover.jpg", rating_count: 1},
{artist_id: (Artist.find_by("name = 'Huey Lewis & The News'")).id, title: "Fore!", rating: 3, year: 1986, album_cover_url: "http://upload.wikimedia.org/wikipedia/en/6/68/Huey_Lewis_%26_The_News_Fore%21_CD_cover.JPG", rating_count: 1}
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

[
  {name: "Rock"}, {name: "Epic"}, {name: "American"}, {name: "Classic"}, {name: "Heartland"}, {name: "Freedom"}, {name: "Dramatic"}, {name: "Joyous"}, {name: "Passionate"}, {name: "Theatrical"}, {name: "Elaborate"},
  {name: "Complex"}, {name: "Mellow"}, {name: "Refined"}, {name: "Reflective"}, {name: "Sensual"}, {name: "Sophisticated"}, {name: "Elegant"}, {name: "Cool"}, {name: "Intimate"},
  {name: "Ambitious"}, {name: "Delicate"}, {name: "Pastoral"}, {name: "Mystical"}, {name: "Spiritual"},
  {name: "Stylish"}, {name: "Eccentric"}, {name: "Exciting"}, {name: "Sexual"}, {name: "Playful"}, {name: "Energetic"}, {name: "Eerie"},
  {name: "Gloomy"}, {name: "Paranoid"}, {name: "Somber"}, {name: "Aggressive"}, {name: "Melancholy"},
  {name: "Lively"}, {name: "Provocative"}, {name: "Fun"},
  {name: "Cheerful"}, {name: "Cynical"}, {name: "Catchy"}
].each do |tag_hash|
  tag = Tag.new
  tag.name = tag_hash[:name]
  tag.save
end

[
  #Born To Run Tags
  {album_id: (Album.find_by("title = 'Born To Run'")).id, tag_id: (Tag.find_by("name = 'Rock'")).id, tag_score: 10}, {album_id: (Album.find_by("title = 'Born To Run'")).id, tag_id: (Tag.find_by("name = 'Epic'")).id, tag_score: 7}, {album_id: (Album.find_by("title = 'Born To Run'")).id, tag_id: (Tag.find_by("name = 'American'")).id, tag_score: 7}, {album_id: (Album.find_by("title = 'Born To Run'")).id, tag_id: (Tag.find_by("name = 'Classic'")).id, tag_score: 8}, {album_id: (Album.find_by("title = 'Born To Run'")).id, tag_id: (Tag.find_by("name = 'Heartland'")).id, tag_score: 3}, {album_id: (Album.find_by("title = 'Born To Run'")).id, tag_id: (Tag.find_by("name = 'Freedom'")).id, tag_score: 4}, {album_id: (Album.find_by("title = 'Born To Run'")).id, tag_id: (Tag.find_by("name = 'Dramatic'")).id, tag_score: 2}, {album_id: (Album.find_by("title = 'Born To Run'")).id, tag_id: (Tag.find_by("name = 'Joyous'")).id, tag_score: 3}, {album_id: (Album.find_by("title = 'Born To Run'")).id, tag_id: (Tag.find_by("name = 'Passionate'")).id, tag_score: 2}, {album_id: (Album.find_by("title = 'Born To Run'")).id, tag_id: (Tag.find_by("name = 'Theatrical'")).id, tag_score: 1}, {album_id: (Album.find_by("title = 'Born To Run'")).id, tag_id: (Tag.find_by("name = 'Elaborate'")).id, tag_score: 1},
  # Kind Of Blue Tags
  {album_id: (Album.find_by("title = 'Kind Of Blue'")).id, tag_id: (Tag.find_by("name = 'Complex'")).id, tag_score: 10}, {album_id: (Album.find_by("title = 'Kind Of Blue'")).id, tag_id: (Tag.find_by("name = 'Mellow'")).id, tag_score: 9}, {album_id: (Album.find_by("title = 'Kind Of Blue'")).id, tag_id: (Tag.find_by("name = 'Refined'")).id, tag_score: 6}, {album_id: (Album.find_by("title = 'Kind Of Blue'")).id, tag_id: (Tag.find_by("name = 'Reflective'")).id, tag_score: 3}, {album_id: (Album.find_by("title = 'Kind Of Blue'")).id, tag_id: (Tag.find_by("name = 'Sensual'")).id, tag_score: 4}, {album_id: (Album.find_by("title = 'Kind Of Blue'")).id, tag_id: (Tag.find_by("name = 'Sophisticated'")).id, tag_score: 7}, {album_id: (Album.find_by("title = 'Kind Of Blue'")).id, tag_id: (Tag.find_by("name = 'Elegant'")).id, tag_score: 3}, {album_id: (Album.find_by("title = 'Kind Of Blue'")).id, tag_id: (Tag.find_by("name = 'Cool'")).id, tag_score: 15}, {album_id: (Album.find_by("title = 'Kind Of Blue'")).id, tag_id: (Tag.find_by("name = 'Intimate'")).id, tag_score: 5},
  # Astral Weeks Tags
  {album_id: (Album.find_by("title = 'Astral Weeks'")).id, tag_id: (Tag.find_by("name = 'Ambitious'")).id, tag_score: 3}, {album_id: (Album.find_by("title = 'Astral Weeks'")).id, tag_id: (Tag.find_by("name = 'Delicate'")).id, tag_score: 3}, {album_id: (Album.find_by("title = 'Astral Weeks'")).id, tag_id: (Tag.find_by("name = 'Pastoral'")).id, tag_score: 4}, {album_id: (Album.find_by("title = 'Astral Weeks'")).id, tag_id: (Tag.find_by("name = 'Intimate'")).id, tag_score: 4}, {album_id: (Album.find_by("title = 'Astral Weeks'")).id, tag_id: (Tag.find_by("name = 'Mellow'")).id, tag_score: 3}, {album_id: (Album.find_by("title = 'Astral Weeks'")).id, tag_id: (Tag.find_by("name = 'Reflective'")).id, tag_score: 7}, {album_id: (Album.find_by("title = 'Astral Weeks'")).id, tag_id: (Tag.find_by("name = 'Mystical'")).id, tag_score: 9}, {album_id: (Album.find_by("title = 'Astral Weeks'")).id, tag_id: (Tag.find_by("name = 'Spiritual'")).id, tag_score: 11},
   # Ziggy Tags
  {album_id: (Album.find_by("title = 'The Rise And Fall Of Ziggy Stardust And The Spiders From Mars'")).id, tag_id: (Tag.find_by("name = 'Stylish'")).id, tag_score: 6}, {album_id: (Album.find_by("title = 'The Rise And Fall Of Ziggy Stardust And The Spiders From Mars'")).id, tag_id: (Tag.find_by("name = 'Theatrical'")).id, tag_score: 5}, {album_id: (Album.find_by("title = 'The Rise And Fall Of Ziggy Stardust And The Spiders From Mars'")).id, tag_id: (Tag.find_by("name = 'Dramatic'")).id, tag_score: 5}, {album_id: (Album.find_by("title = 'The Rise And Fall Of Ziggy Stardust And The Spiders From Mars'")).id, tag_id: (Tag.find_by("name = 'Eccentric'")).id, tag_score: 7}, {album_id: (Album.find_by("title = 'The Rise And Fall Of Ziggy Stardust And The Spiders From Mars'")).id, tag_id: (Tag.find_by("name = 'Exciting'")).id, tag_score: 7}, {album_id: (Album.find_by("title = 'The Rise And Fall Of Ziggy Stardust And The Spiders From Mars'")).id, tag_id: (Tag.find_by("name = 'Sexual'")).id, tag_score: 6}, {album_id: (Album.find_by("title = 'The Rise And Fall Of Ziggy Stardust And The Spiders From Mars'")).id, tag_id: (Tag.find_by("name = 'Playful'")).id, tag_score: 3}, {album_id: (Album.find_by("title = 'The Rise And Fall Of Ziggy Stardust And The Spiders From Mars'")).id, tag_id: (Tag.find_by("name = 'Energetic'")).id, tag_score: 5}, {album_id: (Album.find_by("title = 'The Rise And Fall Of Ziggy Stardust And The Spiders From Mars'")).id, tag_id: (Tag.find_by("name = 'Eerie'")).id, tag_score: 2},
  # OK Computer Tags
  {album_id: (Album.find_by("title = 'OK Computer'")).id, tag_id: (Tag.find_by("name = 'Epic'")).id, tag_score: 10}, {album_id: (Album.find_by("title = 'OK Computer'")).id, tag_id: (Tag.find_by("name = 'Gloomy'")).id, tag_score: 6}, {album_id: (Album.find_by("title = 'OK Computer'")).id, tag_id: (Tag.find_by("name = 'Paranoid'")).id, tag_score: 3}, {album_id: (Album.find_by("title = 'OK Computer'")).id, tag_id: (Tag.find_by("name = 'Somber'")).id, tag_score: 4}, {album_id: (Album.find_by("title = 'OK Computer'")).id, tag_id: (Tag.find_by("name = 'Aggressive'")).id, tag_score: 4}, {album_id: (Album.find_by("title = 'OK Computer'")).id, tag_id: (Tag.find_by("name = 'Eerie'")).id, tag_score: 4}, {album_id: (Album.find_by("title = 'OK Computer'")).id, tag_id: (Tag.find_by("name = 'Dramatic'")).id, tag_score: 7}, {album_id: (Album.find_by("title = 'OK Computer'")).id, tag_id: (Tag.find_by("name = 'Theatrical'")).id, tag_score: 1}, {album_id: (Album.find_by("title = 'OK Computer'")).id, tag_id: (Tag.find_by("name = 'Melancholy'")).id, tag_score: 5},
  # 1999 Tags
  {album_id: (Album.find_by("title = '1999'")).id, tag_id: (Tag.find_by("name = 'Eccentric'")).id, tag_score: 6}, {album_id: (Album.find_by("title = '1999'")).id, tag_id: (Tag.find_by("name = 'Energetic'")).id, tag_score: 7}, {album_id: (Album.find_by("title = '1999'")).id, tag_id: (Tag.find_by("name = 'Joyous'")).id, tag_score: 3}, {album_id: (Album.find_by("title = '1999'")).id, tag_id: (Tag.find_by("name = 'Lively'")).id, tag_score: 7}, {album_id: (Album.find_by("title = '1999'")).id, tag_id: (Tag.find_by("name = 'Passionate'")).id, tag_score: 6}, {album_id: (Album.find_by("title = '1999'")).id, tag_id: (Tag.find_by("name = 'Playful'")).id, tag_score: 5}, {album_id: (Album.find_by("title = '1999'")).id, tag_id: (Tag.find_by("name = 'Provocative'")).id, tag_score: 14}, {album_id: (Album.find_by("title = '1999'")).id, tag_id: (Tag.find_by("name = 'Sensual'")).id, tag_score: 11}, {album_id: (Album.find_by("title = '1999'")).id, tag_id: (Tag.find_by("name = 'Sexual'")).id, tag_score: 13}, {album_id: (Album.find_by("title = '1999'")).id, tag_id: (Tag.find_by("name = 'Stylish'")).id, tag_score: 9}, {album_id: (Album.find_by("title = '1999'")).id, tag_id: (Tag.find_by("name = 'Intimate'")).id, tag_score: 6}, {album_id: (Album.find_by("title = '1999'")).id, tag_id: (Tag.find_by("name = 'Fun'")).id, tag_score: 8},
  # Fore! Tags
  {album_id: (Album.find_by("title = 'Fore!'")).id, tag_id: (Tag.find_by("name = 'Cheerful'")).id, tag_score: 4}, {album_id: (Album.find_by("title = 'Fore!'")).id, tag_id: (Tag.find_by("name = 'Fun'")).id, tag_score: 5}, {album_id: (Album.find_by("title = 'Fore!'")).id, tag_id: (Tag.find_by("name = 'Energetic'")).id, tag_score: 5}, {album_id: (Album.find_by("title = 'Fore!'")).id, tag_id: (Tag.find_by("name = 'Cynical'")).id, tag_score: 1}, {album_id: (Album.find_by("title = 'Fore!'")).id, tag_id: (Tag.find_by("name = 'Catchy'")).id, tag_score: 2}
].each do |description_hash|
  d = Description.new
  d.album_id = description_hash[:album_id]
  d.tag_id = description_hash[:tag_id]
  d.tag_score = description_hash[:tag_score]
  d.save
end


[{user_id: (User.find_by("username = 'cmccanna'")).id, album_id: (Album.find_by("title = 'Born To Run'")).id}, {user_id: (User.find_by("username = 'cmccanna'")).id, album_id: (Album.find_by("title = 'Kind Of Blue'")).id, tag_score: 0}, {user_id: (User.find_by("username = 'cmccanna'")).id, album_id: (Album.find_by("title = 'Astral Weeks'")).id}, {user_id: (User.find_by("username = 'cmccanna'")).id, album_id: (Album.find_by("title = '1999'")).id}, {user_id: (User.find_by("username = 'cmccanna'")).id, album_id: (Album.find_by("title = 'OK Computer'")).id}, 
  {user_id: (User.find_by("username = 'american_psycho'")).id, album_id: (Album.find_by("title = 'Fore!'")).id}, 
  {user_id: (User.find_by("username = 'jdoe'")).id, album_id: (Album.find_by("title = 'Born To Run'")).id}, {user_id: (User.find_by("username = 'jdoe'")).id, album_id: (Album.find_by("title = 'The Rise And Fall Of Ziggy Stardust And The Spiders From Mars'")).id}, {user_id: (User.find_by("username = 'jdoe'")).id, album_id: (Album.find_by("title = 'OK Computer'")).id}, {user_id: (User.find_by("username = 'jdoe'")).id, album_id: (Album.find_by("title = '1999'")).id}, {user_id: (User.find_by("username = 'jdoe'")).id, album_id: (Album.find_by("title = 'Fore!'")).id}
].each do |collections_hash|
  c = Collection.new
  c.user_id = collections_hash[:user_id]
  c.album_id = collections_hash[:album_id]
  c.save
end


[{album_id: (Album.find_by("title = 'Born To Run'")).id, user_id: (User.find_by("username = 'cmccanna'")).id, rating: 5, desc: "One of the best rock albums of all time!", score: 2},
{album_id: (Album.find_by("title = 'Kind Of Blue'")).id, user_id: (User.find_by("username = 'jdoe'")).id, rating: 4, desc: "Miles, Coltrane, Bill Evans, and Cannonball Adderley on one album?!", score: 1},
{album_id: (Album.find_by("title = 'Astral Weeks'")).id, user_id: (User.find_by("username = 'cmccanna'")).id, rating: 5, desc: "Transcendental!", score: 1},
{album_id: (Album.find_by("title = 'The Rise And Fall Of Ziggy Stardust And The Spiders From Mars'")).id, user_id: (User.find_by("username = 'jdoe'")).id, rating: 3, desc: "What a great album!", score: 3},
{album_id: (Album.find_by("title = 'OK Computer'")).id, user_id: (User.find_by("username = 'cmccanna'")).id, rating: 5, desc: "Best album of the 90s", score: 2},
{album_id: (Album.find_by("title = '1999'")).id, user_id: (User.find_by("username = 'jdoe'")).id, rating: 4, desc: "So funky!", score: 2},
{album_id: (Album.find_by("title = 'Fore!'")).id, user_id: (User.find_by("username = 'american_psycho'")).id, rating: 3, desc: "Their early work was a little too new wave for my tastes, but when Sports came out in '83, I think they really came into their own, commercially and artistically. The whole album has a clear, crisp sound, and a new sheen of consummate professionalism that really gives the songs a big boost. He's been compared to Elvis Costello, but I think Huey has a far more bitter, cynical sense of humor. In '87, Huey released this, Fore, their most accomplished album. I think their undisputed masterpiece is \"Hip to be Square\", a song so catchy, most people probably don't listen to the lyrics. But they should, because it's not just about the pleasures of conformity, and the importance of trends, it's also a personal statement about the band itself.", score: 1}
].each do |review_hash|
	r = Review.new
	r.album_id = review_hash[:album_id]
	r.user_id = review_hash[:user_id]
	r.rating = review_hash[:rating]
	r.desc = review_hash[:desc]
	r.score = review_hash[:score]
	r.save
end

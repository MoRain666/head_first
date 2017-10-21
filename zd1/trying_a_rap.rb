require 'rubygems'
require 'mechanize'
agent = Mechanize.new
@count_pages = 1
page = agent.get("https://genius.com/artists/songs?for_artist_page=117146&id=King-of-the-dot&page=#{@count_pages}&pagination=true")
array_of_links_of_songs = []
page.css('div#container.mecha--deprecated div#main ul li a.song_name.work_in_progress.song_link span.title_with_artists span.song_title').each do |el|
  array_of_links_of_songs << el.text
end
@name_of_battle = array_of_links_of_songs[@count_pages - 1]
@name_of_battle.downcase!.gsub!(' ','-')
page_of_battle = "https://genius.com/King-of-the-dot-#{@name_of_battle}-lyrics"
puts page_of_battle
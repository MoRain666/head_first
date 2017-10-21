require 'rubygems'
require 'mechanize'
require 'json'
class RapProcessing
  def initialize(rap, batlle)
    @rap = rap
    @name_of_battle_local = batlle
  end
  @count_of_first_raper = 0
  @count_of_second_raper = 0
  def character_count(rap)
    freqs = 0
    rap.each_char { |char| freqs += 1}
    freqs
  end
  def winner
    if @rap.length <=2  
      puts "Подсчёт невозможен для #{@name_of_battle_local}"
      puts "Отсутствует текст на странице!"
      puts '='*20
    else
      @count_of_first_raper = character_count(@rap[1]) + character_count(@rap[3]) + character_count(@rap[5])
      @count_of_second_raper = character_count(@rap[2]) + character_count(@rap[4]) + character_count(@rap[6])
      if @count_of_first_raper > @count_of_second_raper
        puts "Название рэп-баттла : #{@name_of_battle_local}"
        puts "У первого рэпера #{@count_of_first_raper} букв,а у второго #{@count_of_second_raper} букв "
        puts 'Победил первый рэпер'
        puts '='*20
      else
        puts "Название рэп-баттла : #{@name_of_battle_local}"
        puts "У первого рэпера #{@count_of_first_raper} букв,а у второго #{@count_of_second_raper} букв "
        puts 'Победил второй рэпер'
        puts '='*20
      end
    end
  end
end
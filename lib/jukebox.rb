require "pry"

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list (songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play (songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  song_selection = ""
  songs.each_with_index do |song, index|
    if input.to_i == index + 1 || input == song
      song_selection = song
      puts "Playing #{song}"
    end
  end
  if song_selection == ""
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run (songs)
  puts "Please enter a command:"
  input = gets.strip
  if input == "exit"
    exit_jukebox
  end
  until input == "exit" do
    if input == "help"
      help
      input = gets.strip
    elsif input == "list"
      list (songs)
      input = gets.strip
    elsif input == "play"
      play (songs)
      input = gets.strip
    end
  end
end

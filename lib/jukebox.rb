require 'pry'

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

def get_input(songs)
  puts "Please enter a command:"
  command = gets.chomp
  case command
    when "help"
      help(songs)
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
    else
      puts "I don't recognize that command."
      get_input(songs)
  end
end

def help(songs)
  puts "I accept the following commands:\n- help : displays this help message\n- list : displays a list of songs you can play\n- play : lets you choose a song to play\n- exit : exits this program"
  get_input(songs)
end

def list(songs)
  songs.each.with_index(1) do |song, index|
    puts "#{index}. #{song}"
  end
  get_input(songs)
end

def play(songs)
  puts "Please enter a song name or number:"
  song = gets.chomp
  tracklist = []
  songs.each.with_index do |track, index|
    tracklist << index + 1
  end
  binding.pry

  case song
    when tracklist.include?(song.to_i) == true
      puts "Playing #{songs[song]}"
    when songs.include?(song) == true      
      puts "Playing #{song}"
    else
      puts "Invalid input, please try again"
      play(songs)
  end
end

def exit_jukebox
  puts "Goodbye."
  exit
end

def run(songs)
  help(songs)
  get_input(songs)
end

  
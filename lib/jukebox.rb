require 'pry'

$songs = [
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

def run#(songs)
  #help(songs) if first_time = true
  puts "Please enter a command:"
  command = gets.chomp
  case command
    when "help"
      help#(songs)
    when "list"
      list#(songs)
    when "play"
      play#(songs)
    when "exit"
      exit_jukebox
    else
      puts "I don't recognize that command."
      run#(songs)
  end
end


def help#(songs)
  puts "I accept the following commands:\n- help : displays this help message\n- list : displays a list of songs you can play\n- play : lets you choose a song to play\n- exit : exits this program"
  run#(songs)
end

def list#(songs)
  songs.each.with_index(1) do |song, index|
    puts "#{index}. #{song}"
  end
  run#(songs)
end

def play#(songs)
  puts "Please enter a song name or number:"
  song = gets.chomp
  tracklist = []
  songs.each.with_index do |track, index|
    tracklist << index
  end
  case
    when tracklist.include?(song.to_i-1) == true
      puts "Playing #{songs[song.to_i-1]}"
    when songs.include?(song) == true      
      puts "Playing #{song}"
    else
      puts "Invalid input, please try again"
  end
  run#(songs)
end

def exit_jukebox
  puts "Goodbye."
  exit
end
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
      help
    when "list"
      list(songs)
    when "play"
      play*(songs)
    when "exit"
      exit_jukebox
    else
      puts "I don't recognize that command."
      get_input(songs)
  end
end

def help
  puts "I accept the following commands:\n- help : displays this help message\n- list : displays a list of songs you can play\n- play : lets you choose a song to play\n- exit : exits this program"
  get_input(songs)
end

def list(songs)
  songs.each.with_index(1) do |song|
    puts "#{index}. #{song}"
  end
  get_input
end

def play(songs)
  puts "Please enter a song name or number:"
  song = gets.chomp
  tracklist = []
  songs.each do |no|
    tracklist << no + 1
  end
  case song
    when tracklist.include?(song)
      puts "Playing #{songs[song]}"
    when songs.include?(song)
      puts "Playing #{song}"
    else
      puts "Invalid input, please try again"
      play
  end
end

def exit_jukebox
  puts "Goodbye."
  exit
end

def run(songs)
  help
  get_input(songs)
end

  
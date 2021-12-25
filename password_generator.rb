require './command'
require './characters'
include Characters

def generate_password(size = 8, elements = ALL_ELEMS)
  generated_password = elements.split("").sample(size).join
  return "Here is your generated password #{generated_password}"
end

size_usage = "size <number>\nsize <number> --no-special-chars"
size_flags = ["--no-special-chars"]
Command.new("size", size_usage, size_flags) { |command|
  size = ARGV[ARGV.index(command.name) + 1].to_i
  size = size > 0 ? size : 8
  if flag = command.flags.find {|flag| ARGV[0..].include?(flag)}
    case flag
    when "--no-special-chars"
      elems_without_special_chars = "#{CHARS}#{CHARS.upcase}#{DIGITS}"
      puts generate_password(size, elems_without_special_chars)
    end
  else
    puts generate_password(size)
  end 
}

help_usage = "help\nhelp <command>"
Command.new("help", help_usage) { |command|
  puts "This is the list of all the avaliable commands"
  Command.get_commands.each do |cmd|
    puts cmd.usage
  end
}

command = Command.get_commands.find {|cmd| ARGV[0..].include?(cmd.name)}
if command 
  command.run_command
else 
  puts "No command specified. Running with the default settings... (type 'help' for commands)"
  puts generate_password
end

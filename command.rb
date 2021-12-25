class Command
  @@all_commands = []
  attr_reader :name
  attr_reader :flags
  attr_accessor :usage
  def initialize(name, usage, flags = [], &function)
    @name = name
    @usage = usage
    @function = function
    @flags = flags
    @@all_commands << self
  end

  public
  def run_command
    @function.call(self)
  end

  def Command.get_commands
    @@all_commands
  end
end
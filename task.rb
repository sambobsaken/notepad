require 'date'

class Task < Post
  def initialize
    super

    @due_date = Time.now
  end

  def read_from_console

    puts "Chto nado sdelat'?"
    @text = STDIN.gets.chomp

    puts "K kokomu chislu? Ukajite datu v formate 12.05.2012"
    input = STDIN.gets.chomp

    @due_date = Date.parse(input)
  end

  def to_strings
    time_string = "Sozdano: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r"

  deadline = "Krainii srok: #{@due_date}"

    return [deadline, @text, time_string]
  end
end
puts "Hi, that's my new game! You have to guess the generated number. Maximun number of attempts to guess will be given bellow! Good luck!"

  DEFAULT_MAX_ATTEMPTS = 5
    DEFAULT_MAX_NUMBER = 5

class Play
  attr_accessor :max_n, :att_conf


def initialize (params = {})
  @max_n = max_n ||
  DEFAULT_MAX_ATTEMPTS
@att_conf = att_conf ||
DEFAULT_MAX_NUMBER
@secret = rand(@max_n)
@guess = false
end


def make_attempt
times = 0
until times == @att_conf || @guess
  puts "make a guess: "
  your_guess = gets.to_i
   times+=1
   puts "attempts count: #{times} out of #{@att_conf}"

if your_guess < @secret
  puts "Your number is too low"
elsif your_guess > @secret
  puts 'Your number is too high'
elsif your_guess == @secret
  puts "Success"
@guess = true
end
end

unless @guess
puts "You have lost! The correct number was #{@secret}"
end
end
end
start = Play.new
start.make_attempt

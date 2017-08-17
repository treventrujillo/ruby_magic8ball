require "pry"

@answers = [
    "It is certain",
    "It is decidedly so",
    "Yes definitely",
    "You may rely on it",
    "As I see it, yes",
    "Most Likely",
    "Yes",
    "Signs point to yes",
    "Ask again later",
    "Better not tell you now",
    "Concentrate and ask again",
    "Don't count on it",
    "Probably not",
    "My reply is no",
    "My sources say no",
    "Very doubtful"
  ]

@user_answers = @answers.clone

def initialize_answers
  @user_answers = @answers.clone
  display_menu
end

def reset_answers
  @user_answers.clear
  puts "Answers reset to default"
  initialize_answers
end

def add_answers
  puts "Enter your answer: "
  input = gets.chomp
  if @answers.include?(input)
    puts "Error: Answer Exists"
    add_answers
  else
    @user_answers << input
    puts "Answer Successfully Recorded"
    display_menu
  end
end

def display_menu
  puts "*** MAGIC EIGHT BALL ***"
  puts "Welcome to the Magic Eight Ball,"
  puts "Ask me a question or type 'quit' to exit."
  input = gets.chomp
  case input
  when "quit"
    puts "Thank you for playing Magic Eight Ball, Goodbye!"
    exit
  when "add_answers"
    add_answers
  when "reset_answers"
    reset_answers
  puts "Answers reset to default"
    display_menu
  when "print_answers"
    puts @user_answers
    display_menu
  else
    puts "The Magic Eight Ball says: #{@user_answers.sample}"
    display_menu
  end
end
display_menu

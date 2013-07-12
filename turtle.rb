class Turtle
  
  def initialize
    @head_retracted = true
  end
  
  def eat
    if @head_retracted
      puts "Snooooze"
      else
        puts "What's on the menu today? You know fish is my favorite but I'll eat pretty much anything"
        food = gets.chomp
        print "Nom Nom. Mmmm... that is some good #{food}! I think I'll take a nap now."
        @head_retracted = true
      end
  end
  
  def sleep
    puts "ZZZzzzzz...."
    if @head_retracted == false
      @head_retracted = true
    end
  end
  
  def wake_up
    puts "Ok Ok, keep your shell on! I'm getting up!"
    @head_retracted = false
  end
  
  def swim
    if @head_retracted == true
      puts "*** Maybe she is sleeping or just scared. Better wake her up! ***"
    else
      puts "Didn't think I could move this fast did you? I was born to swim. No, literally! Once I'm hatched I go straight to the water and start swimming immediately. Just hope I don't get eaten along the way!"
    end
  end
  
  def walk
    if @head_retracted == true
      puts "*** Maybe she is sleeping or just scared. Better wake her up! ***"
    else
      puts "Hey don't rush me. I know I'm slow but I'm steady and that wins the race. Remember what happened to that impatient hare?"
    end
  end
  
  def bask
    if @head_retracted == true
      puts "*** Maybe she is sleeping or just scared. Better wake her up! ***"
    else
      puts "Boy do I love catching these rays!!"
    end
  end
  
  def do_math
    puts "Who said I was nature\'s D student? I know all about math. See each panel of my shell? Those are called scutes and the size of each one varies in relation to the others according to the Fibonacci sequence. Go ahead give me a number, any number! _____"
    input = gets.chomp
    puts "So the firt #{input} numbers of the Fibonacci series are #{fibonacci(input.to_i)}. Pretty impressive huh?"
  end
  
  def fibonacci(number)
    n1 = 0
    n2 = 1
    sum = 0
    i = 1
    sequence = [1]
    while i < number do
      sum = n1 + n2
      n1 = n2
      n2 = sum
      sequence << sum
      i += 1
    end
    sequence.join(" ")
  end
  
end

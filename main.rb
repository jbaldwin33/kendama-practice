require './NextTrick'
STDOUT.sync = true

#最初に何の技をやりたい？
puts "What trick do you want to start with?"

while true
  desired_trick = gets.chomp
  current_trick = ""
  next_trick = ""

  @arr.each do |trick|
    if desired_trick == trick.printName()
      current_trick = trick
      
      #君の選んだ技は○○
      puts "You chose to do " + current_trick.printName() + "."
      current_trick.trickToString()

      next_trick = suggest(current_trick)

      #次はこの技をやって下さい
      puts "Now do " + next_trick.printName() + "."
    end
  end
  if current_trick == ""
    puts "No trick available. Try again."
  end
end
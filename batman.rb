puts "After all your hardwork you've become Batman!"

puts "Who will be your sidekick?"
puts "Options: Batgirl or Robin"
ally = gets.chomp.downcase
if ally == "robin"
    puts "Robin: Holy rusted metal, Batman!"
elsif ally == "batgirl"
    puts "Batgirl: Suit me up, Uncle Alfred!"
else
    puts "Fine, I'll pick one for you."
      ally = "robin"
end

## ally must make sense
ally = ally.capitalize

puts "Awesome! Let's get your sidekick a weapon to defend themselves!"
puts "Options: batarang, fists, flashlight"
weapon = gets.chomp.downcase
case weapon
when "batarang"
  puts "#{ally}: Awesome! A Batarang! Thanks Batman!"
when "fists"
  puts "#{ally}: I don't need a weapon! I'll just use my fists like you Batman!"
when "flashlight"
  puts "#{ally}: Uh... thanks? I'll make sure to keep a light on you..."
else
  puts "Don't be selfish. Share your toys with your sidekick."
  weapon = "batarang"
end

puts "Who should we fight first?"
valid_enemies = ["riddler", "penguin", "joker"]

puts "Options: Joker, Penguin, Riddler"
enemy = gets.chomp.downcase

until valid_enemies.include?(enemy)
  puts ["Huh?", "Wha?", "Que?", "Como?"].sample
  puts "Options: Joker, Penguin, Riddler"
  enemy = gets.chomp.downcase
end

# enemy must be valid here
case enemy
when "riddler"
  puts "Riddler: Puzzle me this, Batman!"
when "joker"
  puts "Joker: Ha ha ha ha... ha ha!"
when "penguin"
  puts "Penguin: Rweh rweh rweh... rweh..."
else
  puts "This shouldn't happen."
end

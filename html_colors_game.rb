#cd Desktop/Wyncode
#ruby html_colors_game.rb
class String
#Foreground text colors
def white;          "\e[37m#{self}\e[0m" end       #FFFFFF
def black;          "\e[30m#{self}\e[0m" end        #000000
# def red;              "\e[31m#{self}\e[0m" end        #FF0000
# def green;          "\e[32m#{self}\e[0m" end        #008000
# def brown;         "\e[33m#{self}\e[0m" end       #A52A2A
# def blue;            "\e[34m#{self}\e[0m" end        #0000FF
# def magenta;      "\e[35m#{self}\e[0m" end        #FF00FF
# def cyan;            "\e[36m#{self}\e[0m" end         #00FFFF
# def gray;             "\e[37m#{self}\e[0m" end         #808080
# def yellow;       "\e[1;33m#{self}\e[0m" end       #FFFF00

#backround colors
def bg_white;        "\e[47m#{self}\e[0m" end     #FFFFFF
def bg_black;          "\e[40m#{self}\e[0m" end     #000000
def bg_gray;          "\e[100m#{self}\e[0m" end    #808080
def bg_red;            "\e[41m#{self}\e[0m" end     #FF0000
def bg_green;        "\e[42m#{self}\e[0m" end     #008000
def bg_brown;      "\e[0;43m#{self}\e[0m" end  #A52A2A
def bg_blue;          "\e[44m#{self}\e[0m" end     #0000FF
def bg_magenta;   "\e[105m#{self}\e[0m" end   #FF00FF
def bg_cyan;        "\e[46m#{self}\e[0m" end   #00FFFF
def bg_yellow;    "\e[103m#{self}\e[0m" end    #FFFF00
def bold_text;          "\e[1m#{self}\e[22m" end
# def italic;         "\e[3m#{self}\e[23m" end
# def underline;      "\e[4m#{self}\e[24m" end
# def blink;          "\e[5m#{self}\e[25m" end
# def reverse_color;  "\e[7m#{self}\e[27m" end
end


puts <<END

************************************************************
                          WELCOME TO
                  "HTML Game of Colors: #RRGGBB"
************************************************************
END

puts <<END

This game will help you to learn HTML Colors in hexadecimal (hex triplet)
format . A (hex triplet) is a six-digit, three-byte hexadecimal digits used in
HTML, CSS, SVG, and other computing applications to represent colors.

A hexadecimal color is specified with: "#RRGGBB".

**************************************************************
END

white_color  = "      White color = #??????    ".black.bg_white
black_color = "     Black color = #??????     ".white.bg_black
gray_color =  "      Gray color = #??????     ".white.bg_gray
red_color = "       Red color = #??????     ".black.bg_red
green_color = "      Green color = #??????    ".black.bg_green
brown_color = "     Brown color = #??????     ".black.bg_brown
blue_color = "      Blue color = #??????     ".white.bg_blue
magenta_color =  "    Magenta color = #??????    ".black.bg_magenta
cyan_color  =  "      Cyan color = #??????     ".black.bg_cyan
yellow_color  = "     Yellow color = #??????    ".black.bg_yellow



warning_setup = ""
puts "You need to setup your terminal before continue."
puts "Write the word (info) below to continue."
#user need to enter black = "#000000"
while warning_setup != "info"
  warning_setup = gets.chomp.downcase
  case warning_setup
  when "info"
      puts "\r\nExcellent! Loading Game Setup...".black.bg_yellow
    else
      puts "Please write the word (info) below to display the game setup."
    end
end

#table of colors for game setup using preferences in terminal
puts "\r\nIf the colors WHITE and BROWN are good below you don't need\nto do any changes, just write (ready) below to continue with the game.".black.bg_yellow
puts "\nChange the white and brown colors using the instrucction below.".black.bg_white.bold_text
puts "\n"
puts white_color + black_color
puts red_color + gray_color
puts cyan_color + brown_color
puts  yellow_color + blue_color
puts magenta_color + green_color

puts <<END

G A M E     S E T U P
This GAME work using you terminal profile colors, So, we need to
make sure you have the correct profile.

Follow the instrucction below to setup your terminal:

1) Open Command + , to open Preferences
2) Go to profiles and double click "Novel" on the left column. Open  a new terminal.
Note: Make the changes in real time using the colors above, just arrange
 the terminal and the preferences windows split left and right.

3) On the rigth side go to ANSI colors and on the row "Normal" change White color
to a more intense or bright white.
4)Repeat the step 3 and change in same location Yellow color to Brown.

Thas it! NOW ENJOY THE GAME...
END
setup_ready = ""
puts "Write the word (ready) when you finish to start the game."
#user need to enter black = "#000000"
while setup_ready != "ready"
  setup_ready = gets.chomp.downcase
  case setup_ready
  when "ready"
      puts "\r\nExcellent! Game will start shortly."
    else
      puts "Please write the word (ready) below to display the game setup."
    end
end


# Ask the user their first name and store it in a variable called first_name.
puts "Hello! What's your first name?"
first_name = gets.chomp.capitalize
if first_name.length < 3
  puts "Please use between 3 and 20 characters."
  first_name = gets.chomp.capitalize
  if first_name.length < 3
    puts "Please use between 3 and 20 characters."
    first_name = gets.chomp.capitalize
    if first_name.length < 3
      puts "Please use between 3 and 20 characters."
      first_name = gets.chomp.capitalize
else
  puts "Thank you."
  end
end
end
# Ask the user their last name and store it in a variable called last_name.
puts "Hi #{first_name}, What's your last name?"
last_name = gets.chomp.capitalize
if last_name.length < 3
  puts "Please use between 3 and 20 characters."
  last_name = gets.chomp.capitalize
  if last_name.length < 3
    puts "Please use between 3 and 20 characters."
    last_name = gets.chomp.capitalize
    if last_name.length < 3
      puts "Please use between 3 and 20 characters."
      last_name = gets.chomp.capitalize
else
puts "Awesome"
end
end
end
puts <<END

**************************************************************
             HI #{first_name.upcase} #{last_name.upcase},
          WELCOME TO HTML GAME OF COLORS
**************************************************************
END

1.upto(4) do |n|
  puts "\n"  +  "Please wait..." + "Loading files..."
  sleep 1 # second
end

1.upto(1) do |n|
  puts  "\n" +  "Starting Game..."
  sleep 2 # second
end



def select_color_1
#select colors 1 = [ "white", "red", "cyan", "black"]
"Write the right answer below, include the # sign:
a) #FFFFFF
b) #FF0000
c) #00FFFF
d) #000000"
	end

def select_color_2
#select colors 2 = [ "green", "red", "magenta", "blue"]
"Write the right answer below, include the # sign:
a) #008000
b) #FF0000
c) #FF00FF
d) #0000FF"
	end

def select_color_3
#select colors 3 = [ "gray", "yellow", "cyan", "brown"]
"Write the right answer below, include the # sign:
a) #808080
b) #FFFF00
c) #00FFFF
d) #A52A2A"
	end

#first question
puts "\r\nThis is your first challenge. Great!"
puts "\n" + black_color
puts "\n" + select_color_1


# white    = "#FFFFFF"
# black    = "#000000"
# gray     = "#808080"
# red      = "#FF0000"
# green    = "#008000"
# brown    = "#A52A2A"
# blue     = "#0000FF"
# magenta  = "#FF00FF"
# cyan     = "#00FFFF"
# yellow   = "#FFFF00"

pickup_color = ""

#user need to enter black = "#000000"
while pickup_color != "#000000"
  pickup_color = gets.chomp.upcase
  case pickup_color
  when "#FF0000"
      puts "No, but close, keep trying."
    when "#00FFFF"
      puts "You almost got it. Try again!"
    when "#000000"
      puts "\r\nFabulous! You select the right color."
    else
      puts "Please select anothe color.\nRemember to write the # sign first."
    end
end

#second question
puts "This is your second challenge."
puts "\n" + red_color
puts "\n" + select_color_1

#user need to enter red = "#FF0000"
while pickup_color != "#FF0000"
  pickup_color = gets.chomp.upcase
  case pickup_color
  when "#FF0000"
      puts "No, but close, keep trying."
    when "#00FFFF"
      puts "You almost got it. Try again!"
    when "#FF0000"
      puts "\r\nFabulous! You select the right color."
    else
      puts "Please select anothe color.\nRemember to write the # sign first."
    end
end

#third question
puts "This is your third challenge."
puts "\n" + magenta_color
puts "\n" + select_color_2

#user need to enter magenta = "#FF00FF"
while pickup_color != "#FF0000"
  pickup_color = gets.chomp.upcase
  case pickup_color
  when "#0000FF"
      puts "Hold Your Horses! keep trying."
    when "#008000"
      puts "You almost got it. Try again!"
    when "#FF00FF"
      puts "\r\nMarvelous! You select the right color."
    else
      puts "Please select anothe color.\nRemember to write the # sign first."
    end
end

puts "\r\nHi #{first_name}, don't miss the TIP OF THE DAY:".black.bg_yellow
#Tip of the day
puts <<END
HTML Hex Triplet format: Each HTML code contains symbol "#" and 6 letters
 or numbers. These numbers are in hexadecimal numeral system. For example
 "FF" in hexadecimal represents number 255 in Decimal.
END


#fourth question
puts "\r\nThis is your fourth challenge."
puts "\n" + blue_color
puts "\n" + select_color_2

#user need to enter blue = "#0000FF"
while pickup_color != "#0000FF"
  pickup_color = gets.chomp.upcase
  case pickup_color
  when "#FF00FF"
      puts "Hold Your Horses! keep trying."
    when "#FF0000"
      puts "You almost got it. Try again!"
    when "#0000FF"
      puts "\r\nMarvelous! You select the right color."
    else
      puts "Please select anothe color.\nRemember to write the # sign first."
    end
end

#fifth question
puts "This is your fifth challenge."
puts "\n" + yellow_color
puts "\n" + select_color_3

#user need to enter yellow = "#FFFF00"
while pickup_color != "#FFFF00"
  pickup_color = gets.chomp.upcase
  case pickup_color
  when "#808080"
      puts "Yes! Wait, very close, keep trying."
    when "#00FFFF"
      puts "You almost got it. Try again!"
    when "#FFFF00"
      puts "\r\nPerfect! You select the right color."
    else
      puts "Please select anothe color.\nRemember to write the # sign first."
    end
end

#sixth question
puts "This is your sixth challenge."
puts "\n" + cyan_color
puts "\n" + select_color_3

#user need to enter cyan = "#00FFFF"
while pickup_color != "#00FFFF"
  pickup_color = gets.chomp.upcase
  case pickup_color
  when "#A52A2A"
      puts "No, but close, keep trying."
    when "#FFFF00"
      puts "You almost got it. Try again!"
    when "#00FFFF"
      puts "\r\nFabulous! You select the right color."
    else
      puts "Please select anothe color.\nRemember to write the # sign first."
    end
end

puts "\r\nRelax #{last_name}, don't miss the TIP OF THE DAY:".black.bg_yellow
#Tip of the day
puts <<END
Meaning of numbers:
The first one byte hexadecimal number represents the intensity of red color.
00 is the least and FF is the most intense. The second byte represents intensity
 of green and third byte represents the intensity of blue. So, combining the
 intensity of red, green and blue we can mix almost any color that our heart desire.
END

#seventh question
puts "\r\nThis is your seventh challenge."
puts "\n" + white_color
puts "\n" + select_color_1

#user need to enter white = "#FFFFFF"
while pickup_color != "#FFFFFF"
  pickup_color = gets.chomp.upcase
  case pickup_color
  when "#FF0000"
      puts "Hold Your Horses! keep trying."
    when "#000000"
      puts "You almost got it. Try again!"
    when "#FFFFFF"
      puts "\r\nMarvelous! You select the right color."
    else
      puts "Please select anothe color.\nRemember to write the # sign first."
    end
end

#eighth question
puts "This is your eighth challenge."
puts "\n" + green_color
puts "\n" + select_color_2

#user need to enter green = "#008000"
while pickup_color != "#008000"
  pickup_color = gets.chomp.upcase
  case pickup_color
  when "#A52A2A"
      puts "Yes! Wait, very close, keep trying."
    when "#FF00FF"
      puts "You almost got it. Try again!"
    when "#008000"
      puts "\r\nPerfect! You select the right color."
    else
      puts "Please select anothe color.\nRemember to write the # sign first."
    end
end

#ninth question
puts "This is your ninth challenge."
puts "\n" + gray_color
puts "\n" + select_color_3

#user need to enter gray = "#808080"
while pickup_color != "#808080"
  pickup_color = gets.chomp.upcase
  case pickup_color
  when "#00FFFF"
      puts "No, but close, keep trying."
    when "#FFFF00"
      puts "You almost got it. Try again!"
    when "#808080"
      puts "\r\nFabulous! You select the right color."
    else
      puts "Please select anothe color.\nRemember to write the # sign first."
    end
end

#tenth question
puts "This is your tenth challenge."
puts "\n" + brown_color
puts "\n" + select_color_3

#user need to enter brown = "#A52A2A"
while pickup_color != "#A52A2A"
  pickup_color = gets.chomp.upcase
  case pickup_color
  when "#808080"
      puts "Hold Your Horses! keep trying."
    when "#00FFFF"
      puts "You almost got it. Try again!"
    when "#A52A2A"
      puts "\r\nMarvelous! You select the right color."
    else
      puts "Please select anothe color.\nRemember to write the # sign first."
    end
end


puts "\r\nTerrific! You made a wonderful job finishing the game. I knew you can do it.\nDid you know that since 2005 all modern browsers support 140 colors."
puts "\nYou just practice 10 hexadecimal colors, 130 more to go. Cool."

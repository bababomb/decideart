#this is called a method (or a function) (the "options" is called a parameter) (the thing that replaces "options"
#is called an argument)
def number_the_list(options)
  menunumber = 1
  options.each do |option|
    puts "#{menunumber}. #{option}"
    menunumber = menunumber + 1
  end
end

#Makes a list, numbers them, and then allows you to pick with numbers, and reassigns the option choice
def makelist_choosewithnumber(branch, branch_list)
  number_the_list(branch_list)
  branch = gets.chomp
  branch = branch.to_i
  branch = branch_list[branch - 1]
  return branch
end

#checks to see if choices has been chosen
def check_input(choices)
  if choices.is_a? Numeric
    puts "???"
  elsif choices.is_a? String
    puts "#{choices}"
  end
end

menu_options = ["Medium", "Style", "Content", "Focus", "Color", "Edit all", "Random", "Exit"]

medium_choices = ["Traditional", "Digital"]
traditional_mediums = ["Copics", "watercolors", "Ink", "Micron", "Gouache", "Other"]
digital_mediums = ["Lineart", "Paint"]

style_choices = ["Reference", "Imagination"]
style_qualities = ["poopsketched", "Sketched", "Polished", "Fully Polished", "Undecided"]

content_choices = ["Humans", "Animals", "Backgrounds", "Plants", "Objects", "Other"]
human_choices = ["Female", "Male", "Child", "Multiple", "Other"]
human_focuses = ["Anatomy", "Faces", "Poses", "Interaction", "Fashion", "Emotion", "Other"]
animal_choices = ["Mammals", "Birds", "Fish", "Insects", "Reptiles", "Amphibians"]
bg_choices = ["Architecture", "Nature", "Interior", "Other"]
bg_focuses = ["Perspective", "Design", "Placement", "Story", "Other"]
plant_choices = ["Trees", "Flowers", "Herbs", "Bushes", "Other"]
object_choices = ["Furniture", "Tools", "Food and Drink", "Mecha", "Other"]

focus_choices = ["Experimental", "Grayscale", "Color", "Composition", "Design", "Light Source", "Story", "Emotion", "Other"]

color_hues = ["Red", "Blue", "Yellow", "Orange", "Purple", "Green", "Brown" "Gray" "Black"]
color_values = ["Light", "Midtone", "Dark", "X"]
color_heats = ["Warm", "Cold", "X"]
color_saturation = ["High Saturation", "Mid Saturation", "Low Saturation", "X"]

medium_choice = 1
style_choice = 1
content_choice = 1
focus_choice = 1
color_choice = 1

life = 0
while life == 0

#THIS IS A RECORD OF THE CHOICES
puts "~~~Medium:"
check_input(medium_choice)

puts "~~~Style:"
check_input(style_choice)

puts "~~~Content:"
check_input(content_choice)

puts "~~~Focus:"
check_input(focus_choice)

puts "~~~Colors"
check_input(color_choice)
puts "\n"


number_the_list(menu_options)
puts "\nInsert option number :"
option_number = gets.chomp
#all void, highlight, ctrl slash
#Giant curser: highlight common factor, ctrl d
# 1. Medium
# 2. Style
# 3. Content
# 4. Focus
# 5. Color
# 6. Edit all
# 7. Random
# 8. Exit

if option_number == "1"
  puts "- - - MEDIUM - - - \nChoose one - - -"
  medium_choice = makelist_choosewithnumber(medium_choice, medium_choices)
end

if option_number == "2"
  puts "- - - STYLE - - - \nChoose one - - -"
  style_choice = 1
  style_choice = makelist_choosewithnumber(style_choice, style_choices)
end

if option_number == "3"
  puts "- - - CONTENT - - - \nChoose one - - -"
  content_choice = 1
  content_choice = makelist_choosewithnumber(content_choice, content_choices)
end

if option_number == "4"
  puts "- - - FOCUS - - - \nChoose one - - -"
  focus_choice = 1
  focus_choice = makelist_choosewithnumber(focus_choice, focus_choices)
end

if option_number == "5"
  puts "- - - COLOR - - - \nChoose one - - -"
  color_choice = 1
  color_choice = makelist_choosewithnumber(color_choice, color_choices)
end

if option_number == "6"
    leave_edit = 0
    while leave_edit == 0
    puts  "Type in number to edit. \n
    1. Medium
    2. Style
    3. Content
    4. Focus
    5. Exit"

    edit = gets.chomp

   if edit == "1"
   puts "Please specify the Medium:"
   medium_choice = gets.chomp
  elsif edit == "2"
   puts "Please specify the Style:"
   style_choice = gets.chomp
  elsif edit == "3"
   puts "Please specify the Content:"
   content_choice = gets.chomp
  elsif edit == "4"
   puts "Please specify the Focus:"
   focus_choice = gets.chomp
  elsif edit == "5"
   leave_edit = 1
  end
  end
end

if option_number == "7"
end

if option_number == "8"
  life = 1
end

end #Ends big while loop

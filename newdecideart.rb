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
  medium_choice = 1
  medium_choice = makelist_choosewithnumber(medium_choice, medium_choices)
end

puts "\n"
puts medium_choice

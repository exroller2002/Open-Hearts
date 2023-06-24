# open_hearts.rb

# Initialize Constants
HEART_SHAPE = "\u{2665}"

# Define Method to Draw a Heart
def draw_heart
  puts HEART_SHAPE
end

# Define Main Program
def main
  100.times do
    draw_heart
  end
  puts "Open Hearts!"
end

# Execute Main Program
main

# Define Method to Split Hearts
def split_hearts
  puts "<><><>\n  ||  \n  ||  \n<><><>"
end

# Define Method to Draw Four Hearts
def draw_four_hearts
  draw_heart
  draw_heart
  split_hearts
  draw_heart
  draw_heart
end

# Define Method to Draw a Triangle of Hearts
def draw_triangle
  (0..4).each do |i|
    puts HEART_SHAPE * i
  end
end

# Define Method to Draw an Arrow
def draw_arrow
  puts "<-  ##  ->\n  \\##/  \n   \\/   \n    V   \n    |   "
end

# Define Method to Draw an Inverted Triangle of Hearts
def draw_inverted_triangle
  (4..0).each {|i| puts HEART_SHAPE * i }
end

# Define Method to Draw Two Inverted Triangles
def draw_two_inverted_triangles
  draw_inverted_triangle
  puts "\n"
  draw_inverted_triangle
end

# Define Method to Draw a Heart Arrow
def draw_heart_arrow
  draw_arrow
  split_hearts
  draw_heart
end

# Define Method to Draw a Double Heart Arrow
def draw_double_heart_arrow
  draw_arrow
  draw_heart
  draw_heart
end

# Define Method to Draw a Double Heart
def draw_double_heart
  draw_heart
  draw_heart
end

# Define Method to Draw an Inverted Heart
def draw_inverted_heart
  puts "  \\/  \n  ||  \n  ||  \n  \\/  \n <><> "
end

# Define Method to Draw Two Inverted Hearts
def draw_two_inverted_hearts
  draw_inverted_heart
  puts "\n"
  draw_inverted_heart
end

# Define Method to Draw Filled Triangle
def draw_filled_triangle
  (0..4).each do |i|
    puts "#{HEART_SHAPE * i}#{"  " * (4 - i)}#{HEART_SHAPE * i}"
  end
end

# Define Method to Draw Two Filled Triangles
def draw_two_filled_triangles
  draw_filled_triangle
  puts "\n"
  draw_filled_triangle
end

# Define Method to Draw a Rotated Inverted Heart
def draw_rotated_inverted_heart
  puts "  /\\  \n  ||  \n  ||  \n  /\\  \n<><><>"
end

# Define Method to Draw Two Rotated Inverted Hearts
def draw_two_rotated_inverted_hearts
  draw_rotated_inverted_heart
  puts "\n"
  draw_rotated_inverted_heart
end

# Define Method to Draw Chess Board
def draw_chess_board
  row1 = "#{HEART_SHAPE}  #{HEART_SHAPE}  #{HEART_SHAPE}  #{HEART_SHAPE}  " 
  row2 = "  #{HEART_SHAPE}  #{HEART_SHAPE}  #{HEART_SHAPE}  #{HEART_SHAPE}"
  puts row1
  puts row2
  puts row1
  puts row2
  puts row1
  puts row2
  puts row1
end

# Define Method to Draw Two Chess Boards
def draw_two_chess_boards
  draw_chess_board
  puts "\n"
  draw_chess_board
end

# Define Method to Draw a Pyramid
def draw_pyramid
  (0..4).each do |i|
    puts "#{" " * (4 - i)}#{HEART_SHAPE * (2 * i + 1)}"
  end
end

# Define Method to Draw Two Pyramids
def draw_two_pyramids
  draw_pyramid
  puts "\n"
  draw_pyramid
end

# Define Method to Draw a Heart Flag
def draw_heart_flag
  puts "#{HEART_SHAPE * 5}\n#{HEART_SHAPE * 3} #{HEART_SHAPE * 3}\n#{HEART_SHAPE} #{HEART_SHAPE * 5} #{HEART_SHAPE}\n#{HEART_SHAPE * 11}\n#{HEART_SHAPE * 3} #{HEART_SHAPE * 3}\n#{HEART_SHAPE * 5}"
end

# Define Method to Draw Two Heart Flags
def draw_two_heart_flags
  draw_heart_flag
  puts "\n"
  draw_heart_flag
end

# Define Method to Draw Two Hearts with an Arrow
def draw_hearts_with_arrow
  draw_arrow
  draw_heart
  puts "\n"
  draw_heart
end

# Define Method to Draw Two Diamonds
def draw_diamonds
  puts "#{HEART_SHAPE}  \n #{HEART_SHAPE} #{HEART_SHAPE} \n  #{HEART_SHAPE}  \n #{HEART_SHAPE} #{HEART_SHAPE} \n#{HEART_SHAPE}  \n"
end

# Define Method to Draw Two Diamonds with an Arrow
def draw_diamonds_with_arrow
  draw_arrow
  draw_diamonds
end

# Define Method to Draw a String of Hearts
def draw_hearts_string
  100.times do
    print HEART_SHAPE
  end
end

# Define Method to Draw an Alternating Heart Arrow
def draw_alternating_heart_arrow
  puts "<-  #{HEART_SHAPE}#{HEART_SHAPE}  ->\n  #{HEART_SHAPE}#{HEART_SHAPE}#{HEART_SHAPE}  \n   #{HEART_SHAPE}#{HEART_SHAPE}   \n    #{HEART_SHAPE}    \n    |    "
end

# Define Method to Draw a Heart with an Arrow
def draw_heart_with_arrow
  draw_arrow
  draw_heart
end

# Define Method to Draw Two Hearts with an Alternating Arrow
def draw_hearts_with_alternating_arrow
  draw_alternating_heart_arrow
  draw_heart
  draw_heart
end

# Define Method to Draw a Flower
def draw_flower
  puts "  #{HEART_SHAPE}  \n #{HEART_SHAPE}#{HEART_SHAPE}#{HEART_SHAPE} \n#{HEART_SHAPE}#{HEART_SHAPE}#{HEART_SHAPE}#{HEART_SHAPE}#{HEART_SHAPE} \n #{HEART_SHAPE}#{HEART_SHAPE}#{HEART_SHAPE} \n  #{HEART_SHAPE}  "
end

# Define Method to Draw Two Flowers
def draw_two_flowers
  draw_flower
  puts "\n"
  draw_flower
end

# Define Method to Draw a Rotated Diamond
def draw_rotated_diamond
  puts "  #{HEART_SHAPE}  \n #{HEART_SHAPE} #{HEART_SHAPE} \n#{HEART_SHAPE}#{HEART_SHAPE}#{HEART_SHAPE}#{HEART_SHAPE}#{HEART_SHAPE} \n #{HEART_SHAPE} #{HEART_SHAPE} \n  #{HEART_SHAPE}  \n #{HEART_SHAPE} #{HEART_SHAPE} \n  #{HEART_SHAPE}  "
end

# Define Method to Draw Two Rotated Diamonds
def draw_two_rotated_diamonds
  draw_rotated_diamond
  puts "\n"
  draw_rotated_diamond
end

# Define Method to Draw Two Diagonal Pyramids
def draw_two_diagonal_pyramids
  5.times do |i|
    puts "#{HEART_SHAPE * i}#{"  " * (4 - i)}#{HEART_SHAPE * i}"
  end
  puts "\n"
  4.downto(0) do |i|
    puts "#{HEART_SHAPE * i}#{"  " * (4 - i)}#{HEART_SHAPE * i}"
  end
end

# Define Method to Draw a Letter
def draw_letter
  puts "#{HEART_SHAPE * 2}  \n#{HEART_SHAPE * 2}  \n#{HEART_SHAPE * 5}  \n#{HEART_SHAPE * 2}  \n#{HEART_SHAPE * 2}  \n  #{HEART_SHAPE}  \n  #{HEART_SHAPE}  "
end

# Define Method to Draw Two Letters
def draw_two_letters
  draw_letter
  puts "\n"
  draw_letter
end

# Define Method to Draw a Hexagon
def draw_hexagon
  puts "#{HEART_SHAPE * 2}  \n#{HEART_SHAPE}#{HEART_SHAPE}#{HEART_SHAPE}  \n#{HEART_SHAPE * 4}  \n#{HEART_SHAPE}#{HEART_SHAPE}#{HEART_SHAPE}  \n#{HEART_SHAPE * 2}  "
end

# Define Method to Draw Two Hexagons
def draw_two_hexagons
  draw_hexagon
  puts "\n"
  draw_hexagon
end

# Define Method to Draw an Empty Heart
def draw_empty_heart
  puts "#{HEART_SHAPE}###{HEART_SHAPE} \n#{HEART_SHAPE}# #{HEART_SHAPE} \n#{HEART_SHAPE}###{HEART_SHAPE} \n#{HEART_SHAPE}# #{HEART_SHAPE} \n#{HEART_SHAPE}###{HEART_SHAPE} "
end

# Define Method to Draw Two Empty Hearts
def draw_two_empty_hearts
  draw_empty_heart
  puts "\n"
  draw_empty_heart
end
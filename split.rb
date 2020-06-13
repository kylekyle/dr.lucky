require 'mini_magick'

card = 1

Dir['cards-*-cropped.png'].sort.each do |path|
  puts "cards/card-#{card}.png"
  image = MiniMagick::Image.open(path)
  
  x_step = (image.width / 4.0).ceil
  y_step = (image.height / 4.0).ceil
  
  4.times do |x|
    4.times do |y|
      puts "cards/card-#{card}.png"
      copy = MiniMagick::Image.open(path)
      copy.crop "#{x_step}x#{y_step}+#{x*x_step+35}+#{y*y_step+35}"
      copy.write "cards/card-#{card}.png"
      card+=1
    end
  end
end
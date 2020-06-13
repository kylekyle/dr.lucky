require 'mini_magick'

Dir['cards-[0-9].png'].each_with_index do |path,i|
  puts path
  image = MiniMagick::Image.open(path)
  image.crop "#{image.width-70}x#{image.height-70}+35+35"
  image.write "cards-#{i}-cropped.png"
end
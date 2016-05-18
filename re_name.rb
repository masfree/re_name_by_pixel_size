require 'RMagick'
def show_wh(fname)
  img = Magick::Image::read(fname).first
  w,h = img.columns, img.rows
  puts "Ширина: #{w}"
  puts "Высота: #{h}"
  @size = w*h
  @re_name = fname.slice!(0..(fname.size-5))
  puts "renar=e^"
  puts @re_name
end
Dir.foreach('.') do |fname|
  if File.extname("#{fname}") == ".png"
    puts fname
    show_wh("#{fname}")
    puts @size
    if @size == 276710
      File::rename("#{@re_name}.png", "#{@re_name}(A4).png")
    end
  elsif File.extname("#{fname}") == ".jpg"
    puts fname
    show_wh("#{fname}")
    puts @size
    if @size == 276710
      File::rename("#{@re_name}.jpg", "#{@re_name}(A4).jpg")
    end
  elsif File.extname("#{fname}") == ".tiff"
    puts fname
    show_wh("#{fname}")
    puts @size
    if @size == 276710
      File::rename("#{@re_name}.tiff", "#{@re_name}(A4).tiff")
    end
  end
end
#{|fname| puts("#{fname}") }



#Dir.foreach('.') {|x| puts "Есть #{x}" }
#puts File::stat('0_3.png')
#puts File.exist?('0_3.png')
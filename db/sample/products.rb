Image.all.each do |image|
  filename = image.attachment_file_name
  puts "-- Processing image: #{filename}\r"
  path = File.join(File.dirname(__FILE__), "assets/#{filename}")

  if FileTest.exists? path
    image.attachment = File.open(path)
    image.save
  else
    puts "--- Could not find image at: #{path}"
  end
end


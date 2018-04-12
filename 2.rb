require 'digest'

grades = Hash.new

Dir[ENV['FILES']].each do |file_name|
  begin
  	digest = Digest::SHA256.file(file_name).hexdigest
    puts "SHA256 --- #{digest} --- #{file_name}" 
 
    grades[digest] = file_name
  rescue => error
  	puts error
  	next
  end
end

puts
puts grades
puts grades.count






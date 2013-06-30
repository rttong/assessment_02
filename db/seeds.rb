counter = 1

3.times do |i|
  Note.create({
    :title => "My Note No. #{counter}",
    :content => "My favorite number is #{counter}!"
  	})
  counter += 1
end
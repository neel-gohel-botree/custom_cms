password = 'admin123'
user = User.find_or_initialize_by(email: 'neel.gohel@botreetechnologies.com').tap do |user|
	user.password = password
	user.save!
	user.admin!
end

puts "Admin Created with Email: #{user.email} and Password: #{password}"
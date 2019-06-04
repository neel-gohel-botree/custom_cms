password = 'admin123'
user = User.find_or_initialize_by(email: 'neel.gohel@botreetechnologies.com').tap do |user|
	user.password = password
	user.save!
	user.admin!
end

puts "Admin Created with Email: #{user.email} and Password: #{password}"

page = Page.find_or_create_by(page_order: 1)
if page.contents.count.zero?
	page.contents.find_or_create_by(content_order: 1, content_type: 'video', value: '')
	page.contents.find_or_create_by(content_order: 2, content_type: 'input', value: '')
	page.contents.find_or_create_by(content_order: 3, content_type: 'input', value: '')
	page.contents.find_or_create_by(content_order: 4, content_type: 'input', value: '')
	page.contents.find_or_create_by(content_order: 5, content_type: 'image', value: '')
end
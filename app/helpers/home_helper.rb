module HomeHelper

	def best_in_place_for_content_at(contents, order)
		content = contents.find_by(content_order: order)
		if content
			best_in_place_if admin_user?, content, :value, as: content.content_type
		end
	end

	def admin_user?
		current_user&.admin?
	end
end

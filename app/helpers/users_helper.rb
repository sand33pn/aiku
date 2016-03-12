module UsersHelper

	#Returns the Gravatar for the given user
	def gravatar_for(user)
		image_tag("https://secure.gravatar.com/avatar/#{Digest::MD5::hexdigest(user.email.downcase)}",
			        alt: user.name, class: "gravatar")
	end

end

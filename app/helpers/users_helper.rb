module UsersHelper

	def gravatar_for(user, options = { :size => 50 })
		if !user.email.nil?
		  gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		  gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
		  image_tag(gravatar_url, 
		  	alt: user.name, 
		  	class: "gravatar",
		  	gravatar: options
  		  )
		else
		  image_tag(nil, alt: user.name, class: "gravatar")
		end
	end
end

module UsersHelper

  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
                 gravatar_url = "https://secure.gravatar.com/avatars/#{gravatar_id}.png"
                 image tag(gravatar url, alt: user.name, class: "gravatar")
  end
end

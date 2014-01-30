module ApplicationHelper
  def avatar_url(entry)
    gravatar_id = Digest::MD5::hexdigest(entry.email_address).downcase
    "http://gravatar.com/avatar/#{gravatar_id}.png"
  end
end

module ApplicationHelper
  def gravatar_for(user, options = { size: 300 })
    size = options[:size]
    img_url = "https://media.discordapp.net/attachments/823815546788642836/1468617630028923034/IMG_4503.jpg?ex=69a6f340&is=69a5a1c0&hm=50d212b046e246fbc7a6e0a6e71d978f71ec7f88e21a31c55dcccd14657575d0&=&format=webp&width=566&height=1006"
    image_tag(img_url, alt: user.username, width: size, height: size, class: "avatar rounded shadow mx-auto d-block")
  end
end

module ApplicationHelper
  def avatar_tag
    if current_user.facebook_picture_url
      image_tag current_user.facebook_picture_url, class: "avatar dropdown-toggle", id: "navbar-wagon-menu", "data-toggle" => "dropdown"
    elsif current_user.avatar?
      cl_image_tag current_user.avatar.path, class: "avatar dropdown-toggle", id: "navbar-wagon-menu", "data-toggle" => "dropdown"
    else
      image_tag "http://placehold.it/30x30", class: "avatar dropdown-toggle", id: "navbar-wagon-menu", "data-toggle" => "dropdown"
    end
  end
end

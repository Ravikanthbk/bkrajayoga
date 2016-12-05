module HomeHelper
  def mini_carousel_slider(photo)
    photo.is_url ? link_to_image_text(photo) : image_text(photo)
  end  
  
  def link_to_image_text(photo)
    link_to image_text(photo), photo.url
  end
    
  def image_text(photo)
    "#{image_tag(photo.image.url(:large))} 
    		 <p style='text-align:center'>#{photo.description}</p>".html_safe 
  end  
end

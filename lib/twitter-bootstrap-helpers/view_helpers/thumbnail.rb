module TwitterBootstrapHelpers
  module ViewHelpers
    module Thumbnail
    # <ul class="thumbnails">
    #   <li class="span4">
    #     <a href="#" class="thumbnail">
    #       <img src="http://placehold.it/300x200" alt="">
    #     </a>
    #   </li>      
    # </ul>

  def ts_thumbnails options= {}, &block
    clazz = "thumbnails"
    clazz << " #{options[:class]}" if options[:class]

    content = block_given? ? capture(&block) : options[:txt]

    options = options[:html_options] || {}
    options.merge!(class: clazz)

    content_tag :ul, content, options
  end

  #   <li class="span4">
  #     <a href="#" class="thumbnail">
  #       <img src="http://placehold.it/300x200" alt="">
  #     </a>
  #   </li>      
  def ts_thumbnail size = 2, src, options = {}
    unless (1..6).cover? 2
      raise ArgumentError, "Not a valid thumbnail size: #{size}. must be between: (1..6)"
    end

    li_options  = {class: "span#{size}"}
    a_options   = {class: "thumbnail"}
    img_options = {src: src, alt: options[:alt]}

    content_tag :li, li_options do
      content_tag :a, a_options do
        content_tag :img, img_options
        content_tag :h3, options[:label] if options[:label]
        content_tag :p, options[:caption] if options[:caption]
      end
    end
  end
end
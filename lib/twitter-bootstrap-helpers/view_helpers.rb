module TwitterBootstrapHelpers
  module ViewHelpers
    def icon_for(icon_name, string = '', icon_position = 'left')
      classes = ["icon-#{icon_name}"]
      if string.present?
        classes << 'onLeft' if icon_position == 'left'
        classes << 'onRight' if icon_position == 'right'
      end
      icon = content_tag(:i, '', :class => classes)
      html = (icon_position == 'left') ? icon << string : string << icon
      raw(html)
    end

    def alert_message(opts = {}, &block)
      alert_classes = ["alert"]
      alert_classes << "alert-#{opts[:type]}" if opts[:type]
      alert_classes << opts[:class] if opts[:class]

      contents = capture(&block)

      if opts[:heading]
        alert_classes << "alert-block"
        contents = alert_heading_tag(opts[:heading]) + contents
      end

      if opts[:show_close_button]
        contents = alert_close_tag + contents
      end

      content_tag :div, contents, :class => alert_classes.join(' ')
    end

    def alert_close_tag
      content_tag(:a,  :class => 'close', :data => {:dismiss => 'alert'}) do
        raw('&times;')
      end
    end

    def alert_heading_tag(heading)
      contents = content_tag(:h4, heading, :class => 'alert-heading')
    end

  end
end

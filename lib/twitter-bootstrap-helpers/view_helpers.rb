module TwitterBootstrapHelpers
  module ViewHelpers
    def icon_for(icon_name)
      content_tag :i, '', :class => "icon-#{icon_name}"
    end

    def alert_message(opts = {}, &block)
      alert_classes = ["alert"]
      alert_classes << "alert-#{opts[:type]}" if opts[:type]
      alert_classes << opts[:class] if opts[:class]

      contents = capture(&block)

      if opts[:heading]
        alert_classes << "alert-block"
        contents = alert_heading_tag + contents
      end

      if opts[:show_close_button]
        contents = alert_close_tag + contents
      end

      content_tag :div, contents, :class => alert_classes.join(' ')
    end

    def alert_close_tag
      content_tag(:a, 'x', :class => 'close', :data => {:dismiss => 'alert'})
    end

    def alert_heading_tag(heading)
      contents = content_tag(:h4, heading, :class => 'alert-heading')
    end

  end
end

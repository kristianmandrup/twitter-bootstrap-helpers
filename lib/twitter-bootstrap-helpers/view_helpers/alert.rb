module TwitterBootstrapHelpers
  module ViewHelpers
    module Alert
      def alert_message(opts = {}, &block)
        alert_classes = ["alert"]
        if opts[:type]
          TwitterBoots.validate_type! opts[:type]
          alert_classes << "alert-#{opts[:type]}" 
        end
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
      alias_method :ts_alert_message, :alert_message
      alias_method :ts_alert,         :alert_message

      def alert_close_tag
        content_tag(:a, :href => '#', :class => 'close', :data => {:dismiss => 'alert'}) do
          raw('&times;')
        end
      end
      alias_method :ts_alert_close, :alert_close_tag

      def alert_heading_tag(heading)
        contents = content_tag(:h4, heading, :class => 'alert-heading')
      end
      alias_method :ts_alert_heading, :alert_heading_tag
    end
  end
end
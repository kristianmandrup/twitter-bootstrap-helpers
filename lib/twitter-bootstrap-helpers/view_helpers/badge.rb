module TwitterBootstrapHelpers
  module ViewHelpers
    module Badge
      # <span class="label label-success">Success</span>
      def ts_badge type, text = '', options = {}, &block        
        TwitterBoots.validate_type! type
        clazz = "badge badge-#{type}"
        clazz << " #{options[:class]}" if options[:class]

        options = options[:html_options] || {}
        options.merge!(class: clazz)

        content = block_given? ? capture(&block) : text

        content_tag :span, options do
           content
        end
      end
    end
  end
end


module TwitterBootstrapHelpers
  module ViewHelpers
    module Label
      # <span class="label label-success">Success</span>
      def ts_label type, string = '', options = {}, &block
        TwitterBoots.validate_type! type
        clazz = "label label-#{type}"
        clazz << " #{options[:class]}" if options[:class]

        options = options[:html_options] || {}
        options.merge!(class: clazz)

        content = block_given? ? capture(&block) : string

        content_tag :span, options do
           content
        end
      end
    end
  end
end


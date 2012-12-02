module TwitterBoots
  class << self
    attr_writer :validate

    def validate
      @validate ||= true
    end
    alias_method :validate?, :validate

    def validate_type! type
      return true if !validate? || TwitterBoots.valid_type? type
      raise ArgumentError, "Not a valid label type: #{type}, must be one of: #{valid_types}" 
    end

    def valid_type? type
      valid_types.include? type.to_s
    end

    def valid_types
      %w{success warning important info inverse}
    end

    def helper_modules
      %w{alert badge hero_unit icon label progress thumbnail}
    end
  end
end

module TwitterBootstrapHelpers
  module ViewHelpers
    TwitterBoots.helper_modules.each do |name|
      require "twitter-bootstrap-helpers/view_helpers/#{name}"
      include "#{name}".constantize
    end
  end
end

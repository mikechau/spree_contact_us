module Spree::InquiriesHelper
  def inquiry_types_translated
    types = Spree::ContactUsConfiguration[:inquiry_types].dup

    # unless types.respond_to? :collect
    #   types = YAML.load Spree::ContactUsConfiguration[:inquiry_types]
    # end

    # Translate types, use string for missing translations
    types.collect { |i| i.to_s.capitalize }

  end
end

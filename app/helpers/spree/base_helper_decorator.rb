Spree::BaseHelper.class_eval do

  def display_original_price(product_or_variant)
    product_or_variant.orig_price_in(current_currency).display_price.to_html
  end

end
Spree::Variant.class_eval do
  include ActionView::Helpers::NumberHelper

  alias_method :orig_price_in, :price_in
  def price_in(currency)
    return orig_price_in(currency) if (!self.sale_price.present? || !Spree::Config[:allow_sales])
    Spree::Price.new(:variant_id => self.id, :amount => self.sale_price, :currency => currency)
  end


  def on_sale?
    self.sale_price.present? && Spree::Config[:allow_sales]
  end


  def to_hash
    actual_price  = self.price
    {
        :id    => self.id,
        :in_stock => self.in_stock?,
        :price => number_to_currency(actual_price),
        :sale_price => number_to_currency(self.sale_price)
    }
  end
end
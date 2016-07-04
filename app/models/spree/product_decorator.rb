Spree::Product.class_eval do
  delegate_belongs_to :master, :sale_price, :orig_price_in


  after_save :update_sale_price_variants


  def on_sale?
    self.variants_including_master.inject(false) { |f, v| f || v.on_sale? }
  end


  private

  def update_sale_price_variants
    variants.map { |v| v.update_column(:sale_price, self.sale_price) unless v.sale_price.present? }
  end
end
Deface::Override.new(
    :virtual_path => "spree/admin/products/_form",
    :name => "add_admin_sale_price",
    :insert_after => "[data-hook='admin_product_form_cost_price']",
    :sequence => 10,
    :text => %q{
<div data-hook="admin_product_form_sale_price" class="alpha two columns">
  <%= f.field_container :sale_price , class: ['form-group'] do %>
    <%= f.label :sale_price, Spree.t(:sale_price) %><br/>
    <%= f.text_field :sale_price, value: number_to_currency(@product.sale_price, unit: ''), class: 'form-control' %>
    <%= f.error_message_on :sale_price %>
  <% end %>
</div>
})
SpreeSimpleSales
================

I'm still working on it!!!!!!!

This extension provides the possibility to add sales to the products. So in this way you coulse show in the shop the old price and the new price.
For this purpose I added a method in the base_helper, called 'display_original_price' that let you show the old price. 


Dependencies
=======

This gem uses other personal gem:

gem "spree_variant_options", :git => "https://github.com/sylvinho81/spree_variant_options.git", :branch => '3-0-stable'


Install
=======

Add the following line to your application's Gemfile.

gem "spree_sorting_products", :git => "https://github.com/sylvinho81/spree_simple_sales.git", :branch => '3-0-stable'

bundle install

bundle exec rails g spree_simple_sales:install





TODO
====

. Refactor & improve the code.

. Write Rspecs, Tests tests...

...




Copyright (c) 2016 Pablo Torre, released under the New BSD License

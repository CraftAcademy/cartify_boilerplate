# frozen_string_literal: true

Given('the following products exists') do |table|
  table.hashes.each do |product_hash|
    create(:product, product_hash)
  end
end

Given('I visit the site') do
  visit root_path
end

Given('I click {string} for {string}') do |element_text, product_name|
  product = Product.find_by(name: product_name)
  within("#product_#{product.id}") do
    click_on element_text
  end
end

Given('I click {string}') do |element_text|
  click_on element_text
end

require './features/support/utils.rb'
require 'minitest/autorun'

Given('I am on home page') do
  visit 'https://www.enjoei.com.br/'
  find('.c-modal__close').click
end

Given('I choose some maximum product price') do 
  MAX_PRICE = funcao
  PRICE_CHOOSE = find('.c-content-widget-item__link', text:MAX_PRICE)
end

When('I click in this price category') do
  PRICE_CHOOSE.click
end

Then('I should only see products no more expensive than the choosen price') do
 var =  find('button[data-filter="price"]').text 
 var.delete! 'Até R$ '
 MAX_PRICE.delete! 'até R$'
 assert_equal var,MAX_PRICE
end


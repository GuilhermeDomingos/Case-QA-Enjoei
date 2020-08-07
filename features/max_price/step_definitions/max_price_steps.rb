Given('I am on home page') do
  expect(page).to have_('c-header-search__field').true
  pending
end

Given('I choose some maximum product price') do
  Page.find('#c-content-widget-item__picture-wrapper')
  pending
end

When('I click in this price category') do
  # YOUR SOLUTION HERE
  pending
end

Then('I should only see products no more expensive than the choosen price') do
  # YOUR SOLUTION HERE
  pending
end
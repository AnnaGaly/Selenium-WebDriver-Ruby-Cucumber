#Scenario: Verify that item can be added to cart
Then /^Click the category Age$/ do
  $driver.get "http://www.toysrus.com"
  $driver.manage.window.maximize
  sleep 5
  element = $driver.find_element :xpath => "//a[@class = 'mainNavLink' and text() = 'Age']"
  element.click
  sleep 5
end

Then /^Click the Subcategory "2-4 years"$/ do
  element = $driver.find_element :xpath => "//div[@class = 'sliderWrapper']/p/a [text()='2 - 4 Years']"
  element.click
  sleep 5
end

Then /^Select any available item on the page$/ do
  element = $driver.find_element :xpath => "//img[@class = 'swatchProdImg']"
  element.click
  sleep 5
end

Then /^Add item to the Cart$/ do
  element = $driver.find_element :id => "cartAddition"
  sleep 5
  element.click
  sleep 2
end

Then /^Item is added to the cart$/ do
  $driver.find_element :xpath => "//span[@class = 'cartItemCount' and text() = '1']"
  sleep 5
end

#Scenario: Add 2 item to the cart for category Outdoor Play from different subcategories
Then /^Click the category Outdoor Play$/ do
  $driver.get "http://www.toysrus.com"
  $driver.manage.window.maximize
  sleep 5
  element = $driver.find_element :xpath => "//a[@class = 'mainNavLink' and text() = 'Outdoor Play']"
  element.click
  sleep 5
end

Then /^Click the category Swing Sets$/ do
  element = $driver.find_element :xpath => "//div[@class = 'sliderWrapper']/p/a [text()='Swing Sets']"
  element.click
  sleep 2
end

Then /^Click the subcategory Swing$/ do
  element = $driver.find_element :xpath => "//div[@class = 'sliderWrapper']/p/a [text()='Swings']"
  element.click
  sleep 2
end

Then /^Select 2nd available item on the page$/ do
  element = $driver.find_element :xpath => "(//img[@class = 'swatchProdImg']) [2]"
  sleep 2
  element.click
  sleep 5
end

Then /^Navigate back to the prev page$/ do
  $driver.navigate.back
  sleep 5
end

Then /^Click the Subcategory Wood Swing Sets$/ do
  element = $driver.find_element :xpath => "//div[@class = 'sliderWrapper']/p/a [text()='Wood Swing Sets']"
  element.click
  sleep 2
end

Then /^2 items are added to the cart$/ do
  $driver.find_element :xpath => "//span[@class = 'cartItemCount' and text() = '2']"
  sleep 5
end

Then /^Click the category Clearance$/ do
  $driver.get "http://www.toysrus.com"
  $driver.manage.window.maximize
  sleep 5
  element = $driver.find_element :xpath => "//a[@class = 'mainNavLink clearance']"
  element.click
  sleep 5
end

Then /^Click any Subcategory from Featured Categories$/ do
  element = $driver.find_element :xpath => "//div[@class = 'sliderWrapper']/p/a [text()='Dolls, Dress Up, Stuffed Animals, Tween']"
  element.click
  sleep 2
end

#Scenario: Add 1 item from the category Age and 1 item from the category Outdoor Play
Then /^Click the subcategory Birth - 12 Months$/ do
  element = $driver.find_element :xpath => "//div[@class = 'sliderWrapper']/p/a [text()='Birth - 12 Months']"
  element.click
  sleep 5
end

Then /^Select 6th available item on the page$/ do
  element = $driver.find_element :xpath => "(//img[@class = 'swatchProdImg']) [6]"
  sleep 2
  element.click
  sleep 5
end

Then /^Click the category Toy Blasters$/ do
  element = $driver.find_element :xpath => "//div[@class = 'sliderWrapper']/p/a [text()='Toy Blasters']"
  element.click
  sleep 5
end

Then /^Click the subcategory NERF$/ do
  element = $driver.find_element :xpath => "//div[@id = 'featured-cat-0']"
  element.click
  sleep 5
  element = $driver.find_element :xpath => "//img[@class = 'swatchProdImg']"
  element.click
  sleep 5
  element = $driver.find_element :id => 'cartAddition'
  sleep 5
  element.click
end

Then /^Click cart button$/ do
  element = $driver.find_element :xpath =>"//a[@class = 'cartButton']"
  element.click
  sleep 2
end

Then /^Remove item from the Cart$/ do
  element = $driver.find_element :id => 'remove-1'
  sleep 2
  element.click
end

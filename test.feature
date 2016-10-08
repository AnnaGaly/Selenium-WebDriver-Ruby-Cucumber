Feature: Regression test for TRU:

  Scenario: Verify that item can be added to cart
    Then Click the category Age
    Then Click the Subcategory "2-4 years"
    Then Select any available item on the page
    Then Add item to the Cart
    Then Item is added to the cart

  Scenario: Add 2 item to the cart for category Outdoor Play from different subcategories
    Then Click the category Outdoor Play
    Then Click the category Swing Sets
    Then Click the subcategory Swing
    Then Select 2nd available item on the page
    Then Add item to the Cart
    Then Navigate back to the prev page
    Then Navigate back to the prev page
    Then Click the Subcategory Wood Swing Sets
    Then Select 2nd available item on the page
    Then Add item to the Cart
    Then 2 items are added to the cart

  Scenario: Add 2 identical item to the cart for the category Clearance
    Then Click the category Clearance
    Then Click any Subcategory from Featured Categories
    Then Select any available item on the page
    Then Add item to the Cart
    Then Add item to the Cart
    Then 2 items are added to the cart

  Scenario: Add 1 item from the category Age and 1 item from the category Outdoor Play
    Then Click the category Age
    Then Click the subcategory Birth - 12 Months
    Then Select 6th available item on the page
    Then Add item to the Cart
    Then Click the category Outdoor Play
    Then Click the category Toy Blasters
    Then Click the subcategory NERF
    Then 2 items are added to the cart

  Scenario: Remove item from the Cart
    Then Click the category Age
    Then Click the subcategory Birth - 12 Months
    Then Select 6th available item on the page
    Then Add item to the Cart
    Then Click cart button
    Then Remove item from the Cart

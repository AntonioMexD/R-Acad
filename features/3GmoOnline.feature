Feature: GMO post site testing
In order to buy clothes from GMO site
  As a regular consumer
   I want to online to save money

@cc
Scenario: Enter an order and check total        
	Given I am on the GMO On Line homepage
	And I click the "Enter GMO Online" button
	When I buy the items as show below
  	|3 Person Dome Tent      | 1 |
    |External Frame Backpack | 3 |
    |Glacier Sun Glasses 	   | 0 |
    |Padded Socks 	         | 4 |
    |Hiking Boots            | 1 |	
    |Back Country Shorts     | 4 |
	And I place the order
	Then the grand total is equal to 1190.97 $us

Scenario: Reset an order   
	Given I am on the GMO On Line homepage
	And I click the "Enter GMO Online" button
	When I buy the items as show below
  	|3 Person Dome Tent      | 1 |
    |External Frame Backpack | 3 |
    |Glacier Sun Glasses 	   | 0 |
    |Padded Socks 	         | 4 |
    |Hiking Boots            | 1 |	
    |Back Country Shorts     | 4 |
	And I reset form
  Then items should as show below
    |3 Person Dome Tent      | 0 |
    |External Frame Backpack | 0 |
    |Glacier Sun Glasses 	   | 0 |
    |Padded Socks 	         | 0 |
    |Hiking Boots            | 0 |	
    |Back Country Shorts     | 0 |
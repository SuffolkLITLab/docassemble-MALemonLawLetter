Feature: Lemon Law Final Repair Letter

Scenario: User completes the letter with three repair dates
  Given I start the interview at "docassemble.MALemonLawLetter:data/questions/lemon_law_letter.yml"
  And I wait to see "Lemon Law final repair letter"
  When I click the continue button
  Then I should see "What is your name?"
  When I fill in the following:
    | First name | Jane |
    | Last name | Doe |
  And I click the continue button
  Then I should see "What is your address?"
  When I fill in the address:
    | Address | 123 Main St |
    | City | Boston |
    | State | MA |
    | Zip | 02108 |
  And I click the continue button
  Then I should see "What vehicle did you buy?"
  When I fill in the following:
    | Vehicle year | 2023 |
    | Vehicle make | Toyota |
    | Vehicle model | Camry |
    | Date of purchase | 01/01/2024 |
    | Vehicle Identification Number (VIN) | 12345678901234567 |
  And I click the continue button
  Then I should see "What is the name of the dealership you purchased your vehicle from?"
  When I fill in the following:
    | Dealership name | Bad Dealer |
  And I click the continue button
  Then I should see "What is the address of Bad Dealer?"
  When I fill in the address:
    | Address | 456 Oak St |
    | City | Quincy |
    | State | MA |
    | Zip | 02169 |
  And I click the continue button
  Then I should see "How many days have you been unable to use your vehicle?"
  When I fill in "Days lost" with "20"
  And I click the continue button
  Then I should see "Describe the problems you are having with your vehicle"
  When I fill in "Vehicle issue description" with "Engine makes a weird noise and won't start sometimes."
  And I click the continue button
  Then I should see "When have you taken your vehicle in for repairs?"
  When I fill in the following:
    | Dropoff date | 05/01/2024 |
    | date_return2 | 04/01/2024 |
    | date_return1 | 03/01/2024 |
  And I click the continue button
  Then I should see "Preview your form before you sign it"
  When I click the continue button
  Then I should see "You are signing this form as Jane Doe"
  When I sign the form
  And I click the continue button
  Then I should see "All done"
  And I should see "lemon law letter"

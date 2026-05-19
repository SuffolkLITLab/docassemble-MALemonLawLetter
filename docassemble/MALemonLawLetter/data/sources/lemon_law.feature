@story_table
Feature: Lemon Law Final Repair Letter Story

Scenario: User completes the letter with three repair dates (Story Table)
  Given I start the interview at "lemon_law_letter.yml"
  When I get to the question id "download lemon_law_letter" with this data:
    | var | value |
    | acknowledged_information_use | True |
    | lemon_law_letter_intro | True |
    | users[0].name.first | Jane |
    | users[0].name.last | Doe |
    | users[0].address.address | 123 Main St |
    | users[0].address.city | Boston |
    | users[0].address.state | MA |
    | users[0].address.zip | 02108 |
    | vehicle_year | 2023 |
    | vehicle_make | Toyota |
    | vehicle_model | Camry |
    | purchase_date | today - 60 |
    | VIN | 12345678901234567 |
    | other_parties[0].name.first | Bad Dealer |
    | other_parties[0].address.address | 456 Oak St |
    | other_parties[0].address.city | Quincy |
    | other_parties[0].address.state | MA |
    | other_parties[0].address.zip | 02169 |
    | days_lost | 20 |
    | vehicle_issue_description | Engine makes a weird noise and won't start sometimes. |
    | date_return3 | today - 5 |
    | date_return2 | today - 15 |
    | date_return1 | today - 30 |
    | users[0].signature | /placeholder_signature.png |
  Then I SHOULD see the phrase "Lemon Law Final Repair Letter"

Scenario: User completes the letter with one repair date (Story Table)
  Given I start the interview at "lemon_law_letter.yml"
  When I get to the question id "download lemon_law_letter" with this data:
    | var | value |
    | acknowledged_information_use | True |
    | lemon_law_letter_intro | True |
    | users[0].name.first | Jane |
    | users[0].name.last | Doe |
    | users[0].address.address | 123 Main St |
    | users[0].address.city | Boston |
    | users[0].address.state | MA |
    | users[0].address.zip | 02108 |
    | vehicle_year | 2023 |
    | vehicle_make | Toyota |
    | vehicle_model | Camry |
    | purchase_date | today - 60 |
    | VIN | 12345678901234567 |
    | other_parties[0].name.first | Bad Dealer |
    | other_parties[0].address.address | 456 Oak St |
    | other_parties[0].address.city | Quincy |
    | other_parties[0].address.state | MA |
    | other_parties[0].address.zip | 02169 |
    | days_lost | 1 |
    | vehicle_issue_description | Small scratch. |
    | date_return3 | today - 5 |
    | users[0].signature | /placeholder_signature.png |
  Then I SHOULD see the phrase "Lemon Law Final Repair Letter"

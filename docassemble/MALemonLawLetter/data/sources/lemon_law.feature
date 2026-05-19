@story_table
Feature: Lemon Law Final Repair Letter Story

Scenario: User completes the letter with three repair dates (Story Table)
  Given I start the interview at "lemon_law_letter.yml"
  And I SHOULD see the phrase "Lemon law template"
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
    | users.target_number | 1 |
    | vehicle_year | 2023 |
    | vehicle_make | Toyota |
    | vehicle_model | Camry |
    | purchase_date | 01/01/2024 |
    | VIN | 12345678901234567 |
    | other_parties[0].name.first | Bad Dealer |
    | other_parties[0].address.address | 456 Oak St |
    | other_parties[0].address.city | Quincy |
    | other_parties[0].address.state | MA |
    | other_parties[0].address.zip | 02169 |
    | other_parties.there_is_another | False |
    | days_lost | 20 |
    | vehicle_issue_description | Engine makes a weird noise and won't start sometimes. |
    | date_return3 | 05/01/2024 |
    | date_return2 | 04/01/2024 |
    | date_return1 | 03/01/2024 |
    | lemon_law_letter_preview_question | True |
    | users[0].signature | /placeholder_signature.png |
  Then I SHOULD see the phrase "All done"
  And I SHOULD see the phrase "lemon law letter"

Scenario: Two users complete the letter (Story Table)
  Given I start the interview at "lemon_law_letter.yml"
  And I SHOULD see the phrase "Lemon law template"
  When I get to the question id "download lemon_law_letter" with this data:
    | var | value |
    | acknowledged_information_use | True |
    | lemon_law_letter_intro | True |
    | users[0].name.first | Jane |
    | users[0].name.last | Doe |
    | users.there_is_another | True |
    | users[1].name.first | John |
    | users[1].name.last | Doe |
    | users.there_is_another | False |
    | users[0].address.address | 123 Main St |
    | users[0].address.city | Boston |
    | users[0].address.state | MA |
    | users[0].address.zip | 02108 |
    | users[1].address.address | 123 Main St |
    | users[1].address.city | Boston |
    | users[1].address.state | MA |
    | users[1].address.zip | 02108 |
    | vehicle_year | 2023 |
    | vehicle_make | Toyota |
    | vehicle_model | Camry |
    | purchase_date | 01/01/2024 |
    | VIN | 12345678901234567 |
    | other_parties[0].name.first | Bad Dealer |
    | other_parties[0].address.address | 456 Oak St |
    | other_parties[0].address.city | Quincy |
    | other_parties[0].address.state | MA |
    | other_parties[0].address.zip | 02169 |
    | other_parties.there_is_another | False |
    | days_lost | 1 |
    | vehicle_issue_description | Small scratch. |
    | date_return3 | 05/01/2024 |
    | lemon_law_letter_preview_question | True |
    | users[0].signature | /placeholder_signature.png |
    | users[1].signature | /placeholder_signature.png |
  Then I SHOULD see the phrase "All done"

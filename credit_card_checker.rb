def credit_card_checker(credit_card_number)
  #regex = /\A\d{16}\z/
  # trimmed_number = credit_card_number.gsub(" ", "")
  
  # regular expression to find the credit card number
  # remove all spaces
  # match credit card number with regular expression
  # case 1) if the number matches, tell the user
  # case 2) if the number doesn't match, tell the user
  # credit_card_number.delete(" ").match?(/\A\d{16}\z/) ? "Valid credit card number" : "Invalid credit card number"
  match_data = credit_card_number.delete(" ").match(/\A(\d)(\d{15})\z/)
 
  if match_data && match_data[1] == "5"
    "Valid Mastercard credit card number"
  elsif match_data && match_data[1] == "4"
    "Valid Visa credit card number"
  else
    "Invalid credit card number"
  end
end

p credit_card_checker("4242 4242 4242 4242")

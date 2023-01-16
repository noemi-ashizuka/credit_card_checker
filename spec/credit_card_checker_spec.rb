require_relative "../credit_card_checker"

describe "#credit_card_checker" do
  it "returns 'Valid Visa credit card number' when passed a string with a valid number" do
    actual = credit_card_checker("4242 4242 4242 4242")
    expected = 'Valid Visa credit card number'
    expect(actual).to eq(expected)
  end

  it "returns 'Valid Mastercard credit card number' when passed a string with a valid number" do
    actual = credit_card_checker("5554 4242 5555 4242")
    expected = 'Valid Mastercard credit card number'
    expect(actual).to eq(expected)
  end

  it "returns 'Invalid credit card number' when passed an empty string" do
    actual = credit_card_checker("")
    expected = 'Invalid credit card number'
    expect(actual).to eq(expected)
  end

  it "returns 'Invalid credit card number' when passed an invalid number of digits" do
    actual = credit_card_checker("4242 4242")
    expected = 'Invalid credit card number'
    expect(actual).to eq(expected)
  end
end
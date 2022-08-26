require "phone_numbers"

RSpec.describe PhoneNumber do
    it "returns a list of phone numbers" do
        number = PhoneNumber.new("07827358789")
        expect(number.view_phone_number).to eq ["07827358789"]
    end
end
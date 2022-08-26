require "diary_entry"

RSpec.describe "DiaryEntry" do
    it "constructs an instance of a diary entry" do
        entry = DiaryEntry.new("Hello World")
    end

    # it "gets a phone number from the contents" do
    #     entry = DiaryEntry.new("my phone number is 07827358789 07827345678")
    #     entry.find_phone_number("my phone number is 07827358789 07827345678")
    #     expect(entry.get_phone_number).to eq ["07827358789", "07827345678"]
    # end
end
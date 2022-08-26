require "diary_entry"
require "diary"
require "phone_numbers"

RSpec.describe "Diary Integration Test" do
    it "tests if diary entries are added to the diary" do
        diary = Diary.new
        entry = DiaryEntry.new("Hello, World")
        diary.add(entry)
        result = diary.view_entries
        expect(result).to eq ["Hello, World"]
    end

    it "gets phone numbers from diary entries" do
        contact = PhoneNumber.new("07827358789")
        diary_entry = DiaryEntry.new("Hello, World")
        diary_entry.add_phone_numbers(contact)
        expect(diary_entry.get_phone_number).to eq [["07827358789"]]
    end
end
        




    # it "gets phone numbers from diary entries" do
    #     entry = DiaryEntry.new("My phone number is 07827358789")
    #     contact = PhoneNumber.new
    #     # p number = entry.get_phone_number("My phone number is 07827358789") 
    #     expect(contact.phone_number("My phone number is 07827358789")).to eq ["07827358789"]
    # end
    # it "gets phone numbers from diary entries" do
    #     diary_entry = DiaryEntry.new("My phone number is 07827358789")
    #     contact = PhoneNumber.new
    #     # number = contact.get_phone_number("My phone number is 07827358789")
    #     number = diary_entry.get_phone_number("My phone number is 07827358789")
    #     expect(number).to eq ["07827358789"]
    # end
    # it "gets phone numbers from diary entries" do
    #     diary_entry = DiaryEntry.new("My phone number is 07827358789")
    #     contact = PhoneNumber.new
    #     diary_entry.find_phone_number("My phone number is 07827358789")
    #     diary_entry.add_phone_number
    #     contact.add_phone_number
    #     expect(diary_entry.view_phone_number).to eq ["07827358789"]
    # end

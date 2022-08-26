require "diary_entry"
require "diary"

class PhoneNumber
    def initialize(entry)
        @phone_number = entry
    end

    def view_phone_number
        @list = []
        @list << @phone_number
        return @list
    end
  

end
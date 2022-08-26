class DiaryEntry

    attr_reader :phone_number
    attr_writer :phone_number

    def initialize(contents)
        @contents = contents
        @phone_number = []

    end

    def words
        @contents.split(" ")
    end

    def contents
        return @contents
    end

    def count_words(contents)
        return @contents.split(" ").length
    end

    # def find_phone_number(contents)
    #     regex = /[0-9]{11}/
    #     @phone_number = @contents.scan(regex)
    #     # p @phone_number
    # end
    def add_phone_numbers(contacts)
        @phone_number << contacts
    end

    def get_phone_number
        return @phone_number.map {|item| item.view_phone_number}
    end

end
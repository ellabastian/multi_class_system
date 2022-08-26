require "diary_entry"

class Diary
    def initialize
        @list = []
    end

    def add(entry)
        @list << entry.contents
    end

    def view_entries
        return @list
    end

    def reading_time(wpm)
        return (count_words / wpm.to_f).ceil    
    end


    def reading_chunk(wpm, time)
        no_words_we_can_read = wpm * minutes
        start_from = @furthest_word_read
        end_at = @furthest_word_read + no_words_we_can_read
        word_list = words[start_from, end_at]

        if end_at >= count_words
            @furthest_word_read = 0
        else
            @furthest_word_read = end_at
        end
        return word_list.join(" ")
    end
end 
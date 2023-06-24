class Findhashtags    
    def self.hashtags(text)
        ready_results = []
        arr_text = text.split(' ')
        arr_text.each do |word|
            if word.match?(/^\#[[:word:]]*/)
                ready_results << word
            end 
        end
        ready_results
    end
end
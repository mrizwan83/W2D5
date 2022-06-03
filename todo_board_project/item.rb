class Item
    attr_accessor :title, :description
    # Item::valid_date?(date_string)
    # This method should accept a string and return a boolean indicating if it is valid date of the form YYYY-MM-DD where Y, M, and D are numbers, such as 1912-06-23. 
    # The month should be a number from 1 to 12 and the day should be a number from 1 to 31. Here are examples of the expected behavior:

    def self.valid_date?(date_string)
        arr = date_string.split("-")
        month = arr[1].to_i
        day = arr[2].to_i
        return false if !(1..12).include?(month)
        return false if !(1..31).include?(day)
        true
    end

# p Item.valid_date?('2019-10-25') # true
# p Item.valid_date?('1912-06-23') # true
# p Item.valid_date?('2018-13-20') # false
# p Item.valid_date?('2018-12-32') # false
# p Item.valid_date?('10-25-2019') # false

    def initialize(title, deadline, description)
        @title = title
        @deadline = deadline 
        @description = description
        if !Item.valid_date?(deadline)
            raise "not a valid date"
        end
    end
    # p Item.new('Fix login page', '2019-10-25', 'The page loads too slow.')

    # p Item.new(
    #     'Buy Cheese',
    #     '2019-10-21',
    #     'We require American, Swiss, Feta, and Mozzarella cheese for the Happy hour!'
    # )
    
    # p Item.new(
    #     'Fix checkout page',
    #     '10-25-2019',
    #     'The font is too small.'
    # ) # raises error due to invalid date

    def deadline
        @deadline
    end

    def deadline=(new_deadline)
        if !Item.valid_date?(new_deadline)
            raise "not a valid date"
        else 
            @deadline = new_deadline
        end
    end
end


class Passenger
    attr_reader :name
    def initialize(name)
        @name = name
        @flight_numbers = []
    end

    def has_flight?(flightnum)
        @flight_numbers.include?(flightnum.upcase)
    end

    def add_flight(flightnum)
        if !self.has_flight?(flightnum)
            @flight_numbers << flightnum.upcase
        end
    end
end
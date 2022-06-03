class Flight
    attr_reader :passengers

    def initialize(flightnum, capacity)
        @flight_number = flightnum
        @capacity = capacity 
        @passengers = []
    end

    def full?
        return true if @passengers.length == @capacity
        return false if @passengers.length < @capacity
    end

    def board_passenger(passenger)
        if passenger.has_flight?(@flight_number) && !self.full?
            @passengers << passenger
        end
    end

    def list_passengers
        @passengers.map(&:name)
    end

    def[](index)
        @passengers[index]
    end

    def<<(passenger)
        self.board_passenger(passenger)
    end
end
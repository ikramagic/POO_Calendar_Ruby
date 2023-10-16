class Event
    attr_accessor :start_date, :duration, :title, :attendees

    def initialize(chosen_time, duration_time, given_name, peeps)
        require 'time'
        @start_date = Time.parse(chosen_time) #parse permet de convertir le string chosen_time en objet Time utilisable comme tel
        @duration = duration_time
        @title = given_name
        @attendees = [peeps]
    end

    def postpone_24h
        @start_date + 24*60*60
    end

    def end_date
        @start_date + @duration * 60
    end
end
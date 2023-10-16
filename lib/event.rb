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

    def is_past?
        require 'time'
        current_time = Time.now #Time.new c'est la même chose
        @start_date < current_time
    end

    def is_future? #executer !my_event.is_past? donnera le meme résultat, car ! vérifie la condition inverse
        require 'time'
        current_time = Time.now
        @start_date > current_time
    end

    def to_s
        puts "Titre : " + @title
        puts "Date de début : " + @start_date.to_s
        puts "Durée : " + @duration.to_s + " minutes"
        puts "Invités : " + @attendees.join(", ") 
        #va prendre les éléments à l'intérieur de l'array et les relier avec ce qui est spécifié dans ("")
    end
end


        #@attendees.each do |key, value| #ne fonctionne pas car pas un hash, mais une array
            #puts "Invités : " + key + " , " + value
        #end
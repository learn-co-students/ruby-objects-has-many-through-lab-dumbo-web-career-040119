class Patient

    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(doctor,date)
        #binding.pry
        Appointment.new(date,self,doctor)
    end

    def appointments
        #binding.pry
        Appointment.all.select do |appointment|
            #binding.pry
            appointment.patient == self
        end
    end

    def doctors 
        Doctor.all.map do |doctor|
            #binding.pry
            doctor
        end
    end

    def self.all
        @@all
    end
end
class Doctor
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
    end

    def new_appointment(patient,date)
        #binding.pry
        Appointment.new(date,patient,self)
    end

    def appointments
        Appointment.all.select do |appointment|
            #binding.pry
            appointment.doctor == self
        end
    end

    def patients
        #binding.pry
        Patient.all.map do |patient|
            #binding.pry
            patient
        end
    end

    def self.all
        @@all
    end
end
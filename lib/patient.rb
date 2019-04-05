class Patient
  @@all = []
  
  attr_reader :name
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(name, date)
    Appointment.new(self, date, name)
  end
  
  def appointments
    Appointment.all.select do |x|
      x.patient == self
    end
  end
  
  def doctors
    pat_list = self.appointments
    
    pat_list.collect! do |x|
      x.doctor
    end
  end
end
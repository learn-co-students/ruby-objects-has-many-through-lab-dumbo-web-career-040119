class Doctor
  attr_reader :name
  attr_accessor :appointment

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    date = Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select{|appointment| appointment.doctor == self}
  end

  def patients
    self.appointments.map{|appointment| appointment.patient}
  end
end

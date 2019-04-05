class Patient
  ALL = []

  attr_reader :name

  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL
  end

  def new_appointment(doctor, date)
    Appointment.new(date, doctor, self)
  end

  def appointments
    Appointment.all.select {|appt| appt.patient == self}
  end

  def doctors
    self.appointments.map(&:doctor)
  end

end

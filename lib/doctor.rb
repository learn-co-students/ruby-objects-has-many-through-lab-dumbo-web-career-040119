class Doctor
  ALL = []

  attr_reader :name

  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL
  end

  def new_appointment(patient, date)
    Appointment.new(date, self, patient)
  end

  def appointments
    Appointment.all.select {|appt| appt.doctor == self}
  end

  def patients
    self.appointments.map(&:patient)
  end

end

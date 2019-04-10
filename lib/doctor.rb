class Doctor
  attr_reader :name, :appointments, :patient_name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    new_appointment = Appointment.new(patient, date, self)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    my_appointments = Appointment.all.select do |appointment|
    appointment.doctor == self
    end
    my_appointments.map(&:patient)
  end

end

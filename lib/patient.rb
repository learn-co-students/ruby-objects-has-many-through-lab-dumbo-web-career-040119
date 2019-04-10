class Patient
  attr_reader :patient, :doctor
  @@all = []

  def initialize(patient)
    @patient = patient
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def new_appointment(doctor, date)
    new_appointment = Appointment.new(self, date, doctor)
  end

  def doctors
    self.appointments.map(&:doctor)
  end


end

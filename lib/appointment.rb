class Appointment
  ALL = []

  attr_reader :date, :doctor, :patient

  def initialize(date, doctor, patient)
    @doctor = doctor
    @patient = patient
    @date = date
    ALL << self
  end

  def self.all
    ALL
  end


end

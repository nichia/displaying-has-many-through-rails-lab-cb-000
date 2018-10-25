class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :patients, through: :appointments

  def patients_count
    self.patients.uniq.count
  end
  
end

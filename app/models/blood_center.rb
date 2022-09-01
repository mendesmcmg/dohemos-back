class BloodCenter < ApplicationRecord
  has_many :appointments
  has_many :blood_types
end

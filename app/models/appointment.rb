class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :blood_center
end

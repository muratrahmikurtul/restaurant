class Reservasyon < ApplicationRecord
  belongs_to :customer
  belongs_to :place, dependent: :destroy
end

class Keynote < ApplicationRecord
  has_many :certificate, as: :certificable 
end

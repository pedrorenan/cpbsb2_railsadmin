class Workshop < ApplicationRecord
  has_many :certificate, as: :certificable  
end

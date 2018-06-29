class Certificate < ApplicationRecord
  belongs_to :user
  belongs_to :certificable, polymorphic: true
  
end

class WorkshopUser < ApplicationRecord
  belongs_to :workshop
  belongs_to :user
  enum kind: [:participante, :palestrante]
end

class HeroinePower < ApplicationRecord
    belongs_to :heroine
    belongs_to :power
    validates :strength, inclusion: { in: %w(strong weak average)}
end

class HeroinePower < ApplicationRecord

    belongs_to :heroine
    belongs_to :power

    validates :strength, inclusion: { in: %w(Strong Weak Moderate), message: "%{value} is not a valid strength level"}
end

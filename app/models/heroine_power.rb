class HeroinePower < ApplicationRecord
    belongs_to :heroine
    belongs_to :power

    validates :strength, :inclusion => %w(Strong Average Weak)

    def heroine_name
        self.heroine.name
    end

    def power_name
        self.power.name
    end
end

class HeroinePower < ApplicationRecord
    belongs_to :heroine 
    belongs_to :power

    validates :strength, exclusion: {in: %w(weak average strong)}
end

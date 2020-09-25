class HeroinePower < ApplicationRecord
    belongs_to :heroine 
    belongs_to :power

    #just began working on the heroinepower validation when time was called!
    #validates :strength, inclusion: 
end

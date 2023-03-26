class HeroPower < ApplicationRecord
    belongs_to :hero
    belongs_to :power

    validates :strength, inclusion: { in: ['Strong', 'Average', 'Weak'] }

end

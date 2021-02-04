class Child < ApplicationRecord
    has_many :chores
    has_many :tasks, :through => :chores

    validates_presence_of :first_name, :last_name

    scope :alphabetical, -> { order('last_name', 'first_name') }
    scope :active, -> { where(active: true) }

    def name 
        full_name = self.first_name + " "+ self.last_name
        return full_name
    end

    
end

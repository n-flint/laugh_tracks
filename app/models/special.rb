class Special < ApplicationRecord
    validates_presence_of :title, :runtime, :thumbnail

    belongs_to :comedian

    def self.average_length
      Special.average(:runtime)
    end
end

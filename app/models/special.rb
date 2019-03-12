class Special < ApplicationRecord
    validates_presence_of :title, :runtime, :thumbnail

    belongs_to :comedian
end
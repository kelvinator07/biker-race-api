class Rider < ApplicationRecord
    validates_presence_of :firstname
    validates_presence_of :lastname
    validates_presence_of :city
    validates_presence_of :state
    validates_presence_of :position , default: [], array: true
end

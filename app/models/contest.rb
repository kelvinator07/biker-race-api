class Contest < ApplicationRecord
    validates :firstname, presence: true
    validates :lastname, presence: true
    validates :email, presence: true , uniqueness: true
    validates :slogan, presence: true
end

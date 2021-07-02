class Person < ApplicationRecord
    has_many :plants, :dependent => :delete_all
    validates :email, :name, presence: true
end

class Entersoft < ApplicationRecord
    validates :fullname,:email,:mobilenumber,:btechpercentage, presence: true
end

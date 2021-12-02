class Person < ApplicationRecord
    ROLES= ["RESCUER","SAVED"]
    validates :role, inclusion:{in:ROLES}
end
class Task < ApplicationRecord
    belongs_to :Category, optional: true
end

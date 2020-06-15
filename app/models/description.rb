class Description < ApplicationRecord
  belongs_to :answer, optional: true
end

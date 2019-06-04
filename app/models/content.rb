class Content < ApplicationRecord
  belongs_to :page
  enum content_type: %i[input textarea image video]
end

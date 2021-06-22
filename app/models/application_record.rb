class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  # Sort records by date of creation instead of primary key (uuid)
  # Don't forget to add an index on this column!
  self.implicit_order_column = "created_at"
end

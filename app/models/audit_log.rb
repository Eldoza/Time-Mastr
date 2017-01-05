class AuditLog < ApplicationRecord
  enum status: { pending: 0, confirmed: 1}
  belongs_to :user
end

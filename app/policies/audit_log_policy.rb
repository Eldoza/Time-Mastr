class AuditLogPolicy < ApplicationPolicy
  def index?
    return true if admin?
  end

  private

  def user_or_admin?
    record.user.id == user.id || admin?
  end

  def admin?
    admin_types.include?(user.type)
  end


end

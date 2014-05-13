class User < ActiveRecord::Base
  acts_as_authentic
  #attr_accessible :username, :email, :password, :password_confirmation

  ROLES = %w[Administrador Invitado]

  serialize :roles

  def role? role
    roles.include?(role.to_s)
  end
  validates :username, uniqueness: true
end

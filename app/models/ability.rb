class Ability
  include CanCan::Ability

  def initialize(user)
    #can :read, :all
    can :create, UserSession
      #puts "Usuario Nulo"
  else
    #can :read, :all
    can :destroy, UserSession

    case user.roles.to_s
      when "Administrador" then
        #10.times { print "Hello admin" }
        can :manage, :all
    end
  end

end

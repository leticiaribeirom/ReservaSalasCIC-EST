class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new 
    if user.admin?
      can :manage, :all
    end
    if user.role? ('secretaria')
      can :manage, Reserva
      can :manage, Agenda
      can :manage, Sala
    end
    if user.role? ('professor')
      can :create, Agenda
      can :manage, Reserva
    end
    if user.role? ('usuario')
      can :read, :all
    else
      can :read, :all  # para caso de usuario nao logado
    end
  end
end

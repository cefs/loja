class Ability
  include CanCan::Ability

  def initialize(user)    
    user ||= User.new # Guest user  
    if user.role? :admin 
        can :manage, :all        
    elsif user.role? :gerente
        can :read, Book
    elsif user.role? :funcionario
        can :read, Book      
    elsif user.role? :funcionario
        can :read, Book
    else
        can :read, Book
    end
  end
end

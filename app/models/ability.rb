class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      if user.admin?
        can :manage, :all
        can :access, :rails_admin
        can :dashboard
      else
        can :update, User, :id => user.id
        can :manage, Event, :creator_id => user.id
        can :read, Event
        # can :manage, :all
      end
    end
  end
end

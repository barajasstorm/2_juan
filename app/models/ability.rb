class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
       user ||= User.new(role: 3) # guest user (not logged in)
       if user.admin?
         can :manage, :all
       elsif user.editor?
         can :read, :all
         can :create, :all
	 can :update, Movie
   	 can :destroy, Movie, user_id: user.id
	 can [:set_genre, :set_genres], Movie
       elsif user.basic?
	 can :read, :all
	 can :create, Movie
	 can [:update, :destroy], Movie, user_id: user.id
	 can :set_genre, Movie, user_id: user.id
       else
	#  can :read, Movie
  #  can :create, Movie
  #  can :update, Movie
       end
       end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end


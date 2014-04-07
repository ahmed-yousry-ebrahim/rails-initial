class Ability
  include CanCan::Ability

  def initialize(user)
    if user.nil?
    	anonymus
    else
    	if user.role.name == "admin"
    		admin
    	elsif user.role.name == "manager"
    		manager
    	else
    		authenticated
    	end

    end 
end
    def anonymus
    end

    def authenticated
    	anonymus
    end

    def manager
    	authenticated
    end

    def admin
    	authenticated
    	can :manage, :all
    end
     
  
end

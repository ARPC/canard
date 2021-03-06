Canard::Abilities.for(:admin) do
  
  can :manage, [Post, User]
  
  cannot :destroy, User do |u|
    (user == u)
  end
  
end
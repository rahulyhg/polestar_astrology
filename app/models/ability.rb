class Ability
  include CanCan::Ability

  def initialize(member)
    can :create, StarRelationship
    can :manage, StarRelationship, member_id: member.id
    can :read, Member, id: member.id
    can :manage, Chart, member_id: member.id
    can [:read, :new, :create], Comment
    can :manage, Comment, member_id: member.id
    can :read, Branch
    can :read, Palace
    can :read, Pillar
    can :read, Star
    can :read, StarRelationship, member_id: member.id
    can :read, Stem
  end
end

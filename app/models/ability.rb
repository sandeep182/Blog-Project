# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.nil?
      can :read, Category, Article
    elsif  user.roles.pluck(:name).include? 'Admin' 
      can :manage, :all
    elsif user.roles.pluck(:name).include? 'User'
      can :addComment, :all
    elsif user.roles.pluck(:name).include? 'Author'
      can :postArticle, Category
    elsif user.roles.pluck(:name).include? 'Moderator'
      can :edit, Postcomment
    end
  end
end

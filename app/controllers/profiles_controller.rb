class ProfilesController < ApplicationController
  def index
    @user = User.find(1)
    @skill_categories = @user.skills.map(&:skill_category).uniq
    @articles = @user.articles
  end
end

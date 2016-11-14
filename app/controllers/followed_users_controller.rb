class FollowedUsersController < ApplicationController
  def index
        @followed_users = Followed_user.all
  end
end

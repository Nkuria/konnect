module UsersHelper
    def who_to_follow?(user)
        render 'users/who_to_follow', { u: user } unless user == current_user
      end
end

module UsersHelper
    def who_to_follow?(user)
        render 'users/who_to_follow', { u: user } unless user == current_user
      end

      def following_method(user)
        return if user == current_user
    
        if current_user.following?(user)
          render 'unfollow'
        else
          render 'follow'
        end
      end
end

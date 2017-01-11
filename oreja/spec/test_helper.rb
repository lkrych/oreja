def is_logged_in?
    !session[:user_id].nil?
end

# Log in as a particular user.
def log_in_as(user)
    session[:user_id] = user.id
end

# Log in as a particular user with option for remembering.
def log_in_as_integration(user, password: 'foobar', remember_me: '1')
    post login_path, params: { session: { email: user.email, password: password, remember_me: remember_me } }
end

#####from sessions_helper
# Returns the user corresponding to the remember token cookie.
def current_user
    if (user_id = session[:user_id]) #not a comparison, testing falsiness of session[:user_id]
        @current_user ||= User.find_by(id: user_id)
    elsif (user_id = cookies.signed[:user_id])
        user = User.find_by(id: user_id)
        if user && user.authenticated?(cookies[:remember_token])
            log_in_as user
            @current_user = user
        end
    end
end

def remember(user)
    user.remember
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
end
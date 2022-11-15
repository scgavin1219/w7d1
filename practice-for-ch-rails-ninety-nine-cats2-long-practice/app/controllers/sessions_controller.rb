class SessionsController

    def new
        @user = User.new
        render :new
    end

    def create
        @user = User.find_by(params[:user][:username], params[:user][:password])
        if @user
            login(@user)
            redirect_to cats_url
        else
            render :new
        end
    end

    def destroy
        logout
        redirect_to new_session_url
    end
end
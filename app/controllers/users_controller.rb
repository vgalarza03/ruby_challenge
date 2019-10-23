class UsersController < ApplicationController
  def index
    @users = User.all
    render json:{ status: 'SUCCESS', message: 'Loaded users', data:@users}, status: :ok
  end

  def show
    @user = User.find(params[:id])
    render json:{ status: 'SUCCESS', message: 'Current user', data:@user}, status: :ok
  end

  def create
    @user = User.new(user_params)
     
    if @user.save
      render json:{ status: 'SUCCESS', message: 'Saved user', data:@user}, status: :ok
    else
      render json:{ status: 'ERROR', message: 'User not Saved', data:@user.errors}, status: :unprocessable_entity
    end      
   end
   
   private
   
   def user_params
      params.permit(:name, :email)
   end

  # def new
  # end

  # def update
  # end

def edit
    @user = User.find(params[:id])
    @subjects = Subject.all
    render json:{ status: 'SUCCESS', message: 'Current user', data:@user}, status: :ok
 end

  # def destroy
  # end

end

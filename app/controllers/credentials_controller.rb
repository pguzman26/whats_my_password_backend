#
class CredentialsController < ApplicationController
  def index   # i.e. read *all* gorceries
    credentials = Credential.all
    render json: credentials
  end

  def show    # i.e. read *one* grocery
    render json: Credential.find(params[:id])
    # if credential.show(credential_params)
    #   render json: credential, status: :ok
    # else
    #   render json: credential.errors, status: :unprocessable_entity
    # end
  end

  def create
    credential = Credential.create(credential_params) # grocery_params
    if credential.save
      render json: credential, status: :created
    else
      render json: credential.errors, status: :unprocessable_entity
    end
  end

  def update
    credential = Credential.find(params[:id])
    if credential.update(credential_params)
      credential.save
      render json: credential, status: :ok
    else
      render json: credential.errors, status: :unprocessable_entity
    end
  end

  def destroy
    credential = Credential.find(params[:id])
    credential.destroy
    render json: nil, status: :no_content
  end

  private

  def credential_params
    params.require(:credential).permit(:website, :user_name, :email, :password)
  end
end

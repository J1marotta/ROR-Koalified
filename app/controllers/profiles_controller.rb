class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  # GET /profiles
  # GET /profiles.json
  def index
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
    # there either is a profile page
  redirect_to edit_profile_url if @profile.nil?
  # or there isn't
  end

  # GET /profiles/new
  def new
  end



  # POST /profiles
  # POST /profiles.json
  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user


    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /profiles/1/edit
  def edit
    # find the profile by the current user or create it if it doesn't exist... handy ruby built in function
    @profile = Profile.find_or_initialize_by(user: current_user)

  end


  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url, notice: 'Profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      if params[:id]
      # If there are params it is not the curent user
      @profile = Profile.find_by(user_id: params[:id])
    else
      # Must be the owner if no params
      @profile = Profile.find_by(user: current_user)
    end
  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:name, :driving_history_check_data, :police_check_data, :bio, :car, :avatar_data, :user_id, :license_data)
    end
end
class PersonInfosController < ApplicationController
  before_action :set_person_info, only: [:show, :edit, :update, :destroy]

  # GET /person_infos
  # GET /person_infos.json
  def index
    @person_infos = PersonInfo.all
  end

  # GET /person_infos/1
  # GET /person_infos/1.json
  def show
  end

  # GET /person_infos/new
  def new
    @person_info = PersonInfo.new
  
    # @person_info.person_experiences.build
  end

  # GET /person_infos/1/edit
  def edit
  end

  # POST /person_infos
  # POST /person_infos.json
  def create
    @person_info = PersonInfo.new(person_info_params)

     @person_experience = params[:person_info][:person_experiences]
     
      # if @person_experience.length >2 
        respond_to do |format|
          if @person_info.save
            @person_experience.each do |person|
              unless person.blank?
                @person = PersonExperience.create(experience_name: person, person_info_id: @person_info.id)
              end
            end
            format.html { redirect_to @person_info, notice: 'Person info was successfully created.' }
            format.json { render :show, status: :created, location: @person_info }
          else
            format.html { render :new }
            format.json { render json: @person_info.errors, status: :unprocessable_entity }
          end
        end
      # else
      #   flash[:notice] = 'Sorry please select experience more then one'
  
        
      # end
  end

  # PATCH/PUT /person_infos/1
  # PATCH/PUT /person_infos/1.json
  def update
    respond_to do |format|
       @person_experience = params[:person_info][:person_experiences]
       @person_experiences.destroy_all
     
      if @person_info.update(person_info_params)
        @person_experience.each do |person|
          unless person.blank?
            @person = PersonExperience.create(experience_name: person, person_info_id: @person_info.id)
          end
        end
        format.html { redirect_to @person_info, notice: 'Person info was successfully updated.' }
        format.json { render :show, status: :ok, location: @person_info }
      else
        format.html { render :edit }
        format.json { render json: @person_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_infos/1
  # DELETE /person_infos/1.json
  def destroy
    @person_info.destroy
    respond_to do |format|
      format.html { redirect_to person_infos_url, notice: 'Person info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_person_info
      @person_info = PersonInfo.find(params[:id])
      @person_experiences = @person_info.person_experiences

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_info_params
      aaa = params[:person_info][:person_experiences].reject { |c| c.empty? }
      params.require(:person_info).permit(:name, :cnic, :age, :gender, :address, :mobile, :apply_for, :area, :detail_area_research, :cv_upload,:aaa)
    end
end

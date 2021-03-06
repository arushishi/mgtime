class TCorrecteddataController < ApplicationController
  # GET /t_correcteddata
  # GET /t_correcteddata.json
  def index
    @t_correcteddata = TCorrecteddatum.find(:all, :conditions => { :m_user_id => current_user.id })
  end

  # GET /t_correcteddata/1
  # GET /t_correcteddata/1.json
  def show
  end

  # GET /t_correcteddata/new
  def new
    @t_correcteddatum = TCorrecteddatum.new
  end

  # GET /t_correcteddata/1/edit
  def edit
  end

  # POST /t_correcteddata
  # POST /t_correcteddata.json
  def create
    @t_correcteddatum = TCorrecteddatum.new(t_correcteddatum_params)
    @t_correcteddatum.attributes = { m_user_id: current_user.id }
    if params[:punchdata]
      @t_correcteddatum.corrected_time = nil
    end

    respond_to do |format|
      if @t_correcteddatum.save
        format.html { redirect_to root_path, notice: 'T correcteddatum was successfully created.' }
        format.json { render action: 'show', status: :created, location: @t_correcteddatum }
      else
        format.html { render action: 'new' }
        format.json { render json: @t_correcteddatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /t_correcteddata/1
  # PATCH/PUT /t_correcteddata/1.json
  def update
    respond_to do |format|
      if @t_correcteddatum.update(t_correcteddatum_params)
        format.html { redirect_to root_path, notice: 'T correcteddatum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @t_correcteddatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /t_correcteddata/1
  # DELETE /t_correcteddata/1.json
  def destroy
    set_t_correcteddatum
    @t_correcteddatum.destroy
    respond_to do |format|
      format.html { redirect_to t_correcteddata_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_t_correcteddatum
      @t_correcteddatum = TCorrecteddatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def t_correcteddatum_params
      params.require(:t_correcteddatum).permit(:t_punchdatum_id, :m_user_id, :access_control_kubun, :corrected_time, :comment, :delete_flg, :punchdata)
    end
end

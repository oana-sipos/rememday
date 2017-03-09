class EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :edit, :update, :destroy]
  before_action :dropdown_map, only: [:edit, :index, :show]

  # GET /entries
  # GET /entries.json
  def index
    @entry = Entry.new(name: 'Tassos', mood: 3, date: DateTime.yesterday.iso8601)
    @entries = Entry.all.paginate(page: params[:page], per_page: 10).order('date DESC, created_at DESC')
  end

  # GET /entries/1
  # GET /entries/1.json
  def show
  end

  # GET /entries/new
  def new
    @entry = Entry.new
  end

  # GET /entries/1/edit
  def edit
  end

  # POST /entries
  # POST /entries.json
  def create
    @entry = Entry.new(entry_params)

    respond_to do |format|
      if @entry.save
        format.html { redirect_to entries_path, notice: 'Entry was successfully created.' }
        format.json { render action: 'show', status: :created, location: entries_path }
      else
        format.html { render action: 'new' }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entries/1
  # PATCH/PUT /entries/1.json
  def update
    respond_to do |format|
      if @entry.update(entry_params)
        format.html { redirect_to entries_path, notice: 'Entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entries/1
  # DELETE /entries/1.json
  def destroy
    @entry.destroy
    respond_to do |format|
      format.html { redirect_to entries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry
      @entry = Entry.find(params[:id])
      if !@entry.sleep_end.nil?
        @entry.sleep_end = @entry.sleep_end.strftime("%I:%M %p")
      end
      if !@entry.sleep_start.nil?
        @entry.sleep_start = @entry.sleep_start.strftime("%I:%M %p")
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entry_params
      params.require(:entry).permit(:name, :date, :memory, :mood, :weight, :steps, :sleep_start, :sleep_end)
    end

    def dropdown_map
      @map = ['','meeeeh...','yet another day','okido :)','great :D','awesome!']
    end
end

class FeedsController < ApplicationController
  before_action :set_feed, only: %i[ show edit update destroy ]

  # GET /feeds or /feeds.json
  def index
    @feeds = Feed.all
  end

  # GET /feeds/1 or /feeds/1.json
  def show
    @feed = Feed.find_by(id: params[:id])
    @user = @feed.user
  end

  # GET /feeds/new
  def new
    @feed = Feed.new
  end

  # GET /feeds/1/edit
  def edit
    @feed = Feed.find_by(id: params[:id])
  end

  # POST /feeds or /feeds.json
  def create
    @feed = Feed.new(
      title: params[:title],
      about: params[:about],
      content: params[:content],
      tag: params[:tag],
      user_id: @current_user.id
    )

    @feed.save
    redirect_to feeds_path

  #  respond_to do |format|
  #    if @feed.save
  #      format.html { redirect_to feed_url(@feed), notice: "Feed was successfully created." }
  #      format.json { render :show, status: :created, location: @feed }
  #    else
  #      format.html { render :new, status: :unprocessable_entity }
  #      format.json { render json: @feed.errors, status: :unprocessable_entity }
  #    end
  #  end
  end

  # PATCH/PUT /feeds/1 or /feeds/1.json
  def update
    if @feed.update(feed_params)
      redirect_to @feed, notice: 'Feed was successfully updated.'
    else
      render :edit
    end

  #  respond_to do |format|
  #    if @feed.update(feed_params)
  #      format.html { redirect_to feed_url(@feed), notice: "Feed was successfully updated." }
  #      format.json { render :show, status: :ok, location: @feed }
  #    else
  #      format.html { render :edit, status: :unprocessable_entity }
  #      format.json { render json: @feed.errors, status: :unprocessable_entity }
  #    end
  #  end
  end

  # DELETE /feeds/1 or /feeds/1.json
  def destroy
    @feed = Feed.find_by(id: params[:id])
    @feed.destroy
    redirect_to feeds_path
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feed
      @feed = Feed.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def feed_params
      params.require(:feed).permit(:title, :about, :content, :tag)
    end
end

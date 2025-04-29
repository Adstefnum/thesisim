class ChatSessionsController < ApplicationController
  before_action :set_chat_session, only: %i[ show edit update destroy ]

  # GET /chat_sessions or /chat_sessions.json
  def index
    @chat_sessions = ChatSession.all
  end

  # GET /chat_sessions/1 or /chat_sessions/1.json
  def show
  end

  # GET /chat_sessions/new
  def new
    @chat_session = ChatSession.new
  end

  # GET /chat_sessions/1/edit
  def edit
  end

  # POST /chat_sessions or /chat_sessions.json
  def create
    @chat_session = ChatSession.new(chat_session_params)

    respond_to do |format|
      if @chat_session.save
        format.html { redirect_to @chat_session, notice: "Chat session was successfully created." }
        format.json { render :show, status: :created, location: @chat_session }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @chat_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chat_sessions/1 or /chat_sessions/1.json
  def update
    respond_to do |format|
      if @chat_session.update(chat_session_params)
        format.html { redirect_to @chat_session, notice: "Chat session was successfully updated." }
        format.json { render :show, status: :ok, location: @chat_session }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @chat_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chat_sessions/1 or /chat_sessions/1.json
  def destroy
    @chat_session.destroy!

    respond_to do |format|
      format.html { redirect_to chat_sessions_path, status: :see_other, notice: "Chat session was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chat_session
      @chat_session = ChatSession.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def chat_session_params
      params.expect(chat_session: [ :user_id, :title ])
    end
end

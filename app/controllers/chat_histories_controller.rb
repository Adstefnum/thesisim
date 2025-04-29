class ChatHistoriesController < ApplicationController
  before_action :set_chat_history, only: %i[ show edit update destroy ]

  # GET /chat_histories or /chat_histories.json
  def index
    @chat_histories = ChatHistory.all
  end

  # GET /chat_histories/1 or /chat_histories/1.json
  def show
  end

  # GET /chat_histories/new
  def new
    @chat_history = ChatHistory.new
  end

  # GET /chat_histories/1/edit
  def edit
  end

  # POST /chat_histories or /chat_histories.json
  def create
    @chat_history = ChatHistory.new(chat_history_params)

    respond_to do |format|
      if @chat_history.save
        format.html { redirect_to @chat_history, notice: "Chat history was successfully created." }
        format.json { render :show, status: :created, location: @chat_history }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @chat_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chat_histories/1 or /chat_histories/1.json
  def update
    respond_to do |format|
      if @chat_history.update(chat_history_params)
        format.html { redirect_to @chat_history, notice: "Chat history was successfully updated." }
        format.json { render :show, status: :ok, location: @chat_history }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @chat_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chat_histories/1 or /chat_histories/1.json
  def destroy
    @chat_history.destroy!

    respond_to do |format|
      format.html { redirect_to chat_histories_path, status: :see_other, notice: "Chat history was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chat_history
      @chat_history = ChatHistory.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def chat_history_params
      params.expect(chat_history: [ :chat_session_id, :content, :reply_to_id ])
    end
end

class ConversationsController < ApplicationController

  def create
    @conversation = Conversation.new
    @conversation.save
    redirect_to @conversation, notice: 'Starting a conversation.'
  end

  def show
  	@conversation_id = params[:id]
  	if query = params[:q]
      @results = YoutubeSearch.search query
    end
  end
  
end
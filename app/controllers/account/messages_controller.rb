class Account::MessagesController < Account::AccountController

  def index
    @messages = Contact.buyer_messages_from(current_user) 
  end
end

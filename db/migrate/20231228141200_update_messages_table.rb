class UpdateMessagesTable < ActiveRecord::Migration[7.0]
  def change
    remove_reference :messages, :sender
    remove_reference :messages, :receiver
    add_reference :messages, :user
  end
end

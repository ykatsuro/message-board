class Message < ApplicationRecord
  validates :content, presence: true, length: {maximum: 255}
  validates :title, presence: true, length: { maximum: 255}
end

def message_params
  params.require(:message).permit(:content, :title)
end
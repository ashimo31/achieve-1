class Task < ActiveRecord::Base
  belongs_to :user
  
  has_many :submit_requests, dependent: :destroy

  enum status: {リクエスト済み:0, 反応あり:1, 完了:2}

end

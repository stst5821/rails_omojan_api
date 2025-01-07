class Main < ApplicationRecord
  validates :name, presence: true    # 名前は必須
end

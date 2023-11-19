# 各質問の選択肢を格納

class Choice < ApplicationRecord
  belongs_to :question
end

# 質問の内容を格納

class Question < ApplicationRecord
    has_many :choices
end

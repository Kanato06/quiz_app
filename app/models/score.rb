class Score < ApplicationRecord
    def self.average_score
      average(:score_value)
    end
end
  
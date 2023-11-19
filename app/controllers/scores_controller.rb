class ScoresController < ApplicationController
    def create
      score = Score.new(score_params)
      if score.save
        # 成功時の処理（例: 成功メッセージの表示、リダイレクトなど）
      else
        # 失敗時の処理（例: エラーメッセージの表示）
      end
    end
  
    private
  
    def score_params
      params.require(:score).permit(:score_value)
    end
end
  
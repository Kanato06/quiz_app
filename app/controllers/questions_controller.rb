class QuestionsController < ApplicationController
    # すべての質問を表示するアクションを定義
    def index
      @questions = Question.all
    end
  
    # 個別の質問とその選択肢を表示するアクションを定義
    def show
      @question = Question.find_by(id: params[:id])
      unless @question
        redirect_to root_path, alert: "質問が見つかりません"
      end
    end
  
    # スコアを保存するアクションを定義
    def save_score
        score = Score.new(score_value: params[:score])
        if score.save
          average_score = Score.average_score
          render json: { average_score: average_score }
        else
          head :unprocessable_entity
        end
    end
end


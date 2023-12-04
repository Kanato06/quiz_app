class ApplicationController < ActionController::Base
  protected

  def after_sign_in_path_for(resource)
    # ユーザーがサインインした後に遷移するパス
    questions_path # 例: クイズの一覧ページへリダイレクト
  end
end

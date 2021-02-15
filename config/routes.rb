Rails.application.routes.draw do
  
  # ログイン
  resource :session, only:[:new :create, :destroy]
  # パスワード再設定
  resource :account, expect:[:new, :create, :destroy]
  # メニュー
  root "top#index"
  # 社員情報各画面
  resources :syain
  # 検索画面
  get "search" => "search#index"

end

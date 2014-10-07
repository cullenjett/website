Rails.application.routes.draw do
  root 'pages#home'
  scope '/hooks', :controller => 'hooks' do
    post :git_push_callback
  end
end

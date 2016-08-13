# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

post 'openid', to: 'open_id_provider#process_request'

get 'openid', :to => 'open_id_provider#index'
get 'openid/xrds', :to => 'open_id_provider#idp_xrds', :defaults => { :format => 'xrds' }
match 'openid/confirm', :to => 'open_id_provider#confirm', via: [:get, :post]
get 'openid/user/:id', :to => 'open_id_provider#user_page'
get 'openid/user/:id/xrds', :to => 'open_id_provider#user_xrds', :defaults => { :format => 'xrds' }

class UserTokenController < Knock::AuthTokenController

  skip_before_action :verify_authenticity_token, raise: false
  #post 'user_token' => 'user_token#create'
end

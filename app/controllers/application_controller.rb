class ApplicationController < ActionController::Base
end


# オーバーライドしたいけど
# 方法がわからなかったので
# 
# module ::ActionController
# end

module RequestForgeryProtectionExtention
  def any_authenticity_token_valid?
    super
    true
  end
end

::ActionController::Base.prepend(RequestForgeryProtectionExtention)

# bundle installした中身を直接いじった
# 変更前
# def any_authenticity_token_valid? # :doc:
#   request_authenticity_tokens.any? do |token|
#     valid_authenticity_token?(session, token)
#   end
# end
# 変更後
# def any_authenticity_token_valid? # :doc:
#   request_authenticity_tokens.any? do |token|
#     valid_authenticity_token?(session, token)
#   end
#   true
# end

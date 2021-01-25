Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET']
end


#801119925631-vg2patfnucvm4jhki1mlq8pa8bft91l9.apps.googleusercontent.com CLIENT ID

#8ctxR55k-wCvFlsQmElb-Yg9 CLIENT SECRET
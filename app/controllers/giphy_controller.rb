get "/getgiphywithit" do
  @gif = giphy
  URL = @gif[0].fixed_height_image.url.to_s
  # URL = @gif[0].bitly_gif_url.to_s
  p URL
  send_sms_notification("+19168444156",URL)
  redirect "/"
  # if request.xhr?
  #   content_type :json
  #   p @gif.to_json[0]
  # else
  #   p 'HEY WHERE AM I?!?!?!?!?!'
  # end
end
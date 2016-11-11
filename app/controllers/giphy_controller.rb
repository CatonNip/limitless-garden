get "/getgiphywithit" do
  @gif = giphy
  p @gif[0]
  # if request.xhr?
  #   content_type :json
  #   p @gif.to_json[0]
  # else
  #   p 'HEY WHERE AM I?!?!?!?!?!'
  # end
end
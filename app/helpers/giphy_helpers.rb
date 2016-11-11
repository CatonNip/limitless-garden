helpers do
  def giphy
    a = ['cat','dog','corgi','owl','parakeet','baby bear']
    Giphy.search( a.sample , {limit: 1, offset: 25})
  end
end
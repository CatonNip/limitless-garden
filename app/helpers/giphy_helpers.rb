helpers do
  def giphy
    a = ['cat','dog','husky','owl','bird','bear']
    Giphy.search( a.sample , {limit: 1, offset: 25})
  end
end
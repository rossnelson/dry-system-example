class Services::User
  include Import[user: 'repos.user']

  def call(_event, _context)
    user
  end
end

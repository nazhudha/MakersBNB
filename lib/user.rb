class User

  def self.create(name, user_name, email, password)
    @details = [name, user_name, email]
  end

  def self.details
    @details
  end
end

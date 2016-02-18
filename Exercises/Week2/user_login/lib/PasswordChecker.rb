class PasswordChecker
  def initialize()
  end

  def self.long(password)
    @pass = password
    if password.length > 7
      true
    else
      false
    end
  end

  # def self.long_email(email)
  #   @email = email
  #   if email.length > 7
  #     true
  #   else
  #     false
  #   end
  # end

  def self.string_downcase(password)
    @pass = password
    #Check each letter and it shouldn't return nil
    if @pass.index(/[a-z]/) != nil
      true
    else
      false
    end
  end

  def self.string_upcase(password)
    @pass = password
    if @pass.index(/[A-Z]/) != nil
      true
    else
      false
    end
  end

  def self.string_number(password)
    @pass = password
    if @pass.index(/[0-9]/) != nil
      true
    else
      false
    end
  end

  def self.string_special_char(password)
    @pass = password
    if @pass.index(/[!-+:-@^-_]/) != nil
      true
    else
      false
    end
  end

   def self.pass_contains_emailvalue(email, password)
    @email = email
    @pass = password
    #You divide the string in two substrings
    email_elements = @email.split("@")
    #Check if password include some of that subtrings
    if @pass.include?(email_elements[0]) || @pass.include?(email_elements[1])
      false
    else
      true
    end
  end


end 
require "pry"

class PasswordChecker
  def check_password(email, password)
    @email = email
    @password = password

    if check_length(password) && check_number(password) && check_letter(password) && check_uppercase(password) && check_lowercase(password) && check_password_name(email,password)
      true
    else
      false
    end

  end

  def check_length(password)
    if password.length < 7
      false
    else
      true
    end
  end

  def check_number(password)
    if password =~ /\d/
      true
    else
      false
    end
  end

  def check_letter(password)
   if password =~ /[a-zA-Z]/
      true
    else
      false
    end
  end

  def check_uppercase(password)
    if password =~ /[A-Z]/
      true
    else
      false
    end
  end
  def check_password_name(email,password)
    passarray = email.split(/\W/)
    binding.pry
    if password.include? passarray[passarray.length - 2] && password.include? passarray[0]
      false
    else
      true
    end
  end

  def check_lowercase(password)
    if password =~ /[a-z]/
      true
    else
      false
    end
  end
end
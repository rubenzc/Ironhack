def shout method_name
  define_method "shout_#{method_name}".to_sym do
    self.send(method_name.to_sym).upcase
  end
end

class A
  shout :hi
  def hi name
    "hi, #{name}"
  end
end

A.new.shout_hi
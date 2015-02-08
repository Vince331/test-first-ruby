class Friend
  
  def greeting(who = nil)
    final = ""
    if who == nil
      final = "Hello!"
    else
      final = "Hello, #{who}!"
    end
    final
  end

end

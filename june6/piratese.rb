class String
  
  def initialize (sentence)
    @sentence = sentence
  end

  def to_pirate
    if @sentence.downcase!.include?("are")
      @sentence.gsub! 'are', 'Yarr'
      # humanize before returning
    else
      return "=NO arr"
    end


  end


end
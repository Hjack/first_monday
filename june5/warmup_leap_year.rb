class Year
  def initialize(year)
    @year=year
  end


  def self.new year

    if year%4==0
      if year%100==0 && year%400==0
        return true
      elsif year%100==0
        return false
      else
        return true
      end
    else return false
    end
  end
end

Year.(1997)

class Beer
  def self.song
    beer_quan=99
    plural=""
    while beer_quan>0
      if beer_quan==1
        plural=""
      else
        plural="s"
      end
      puts  beer_quan.to_s+" bottle"+plural+" of beer on the wall..."+beer_quan.to_s+" bottle"+plural+" of beer!!"
      puts  "You take one down, you pass it around. "+(beer_quan-1).to_s+" bottle"+plural+" of beer!!"
      puts
      beer_quan-=1
    end
  end
end

Beer.song


json.extract! @guest, :id, :name, :age, :favorite_color 

json.gifts do 
    @guest.gifts.each do |gift| 
        json.extract! gift, :title, :description 
    end 
end 

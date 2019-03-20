json.array! @guests do |guest| 
    if (guest.age > 40 && guest.age < 50)
        json.extract! guest, :id, :name, :age, :favorite_color 
    end 
end 

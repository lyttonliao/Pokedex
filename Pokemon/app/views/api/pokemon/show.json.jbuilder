json.pokemon do
    json.extract! @pokemon, :name, :attack, :defense, :moves, :poke_type, :image_url, :item_ids
end

json.items do 
    @pokemon.items.each do |item| 
        json.set! item.id do 
            json.extract! item, :id, :name, :pokemon_id, :price, :happiness, :image_url
        end 
    end 
    # json.set! @pokemon.items.id do
        # json.extract! @pokemon.items, :id, :name, :pokemon_id
    # end
end
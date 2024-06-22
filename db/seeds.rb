# db/seeds.rb

creatures_data = [
  { 
    name: 'Dragon', 
    creature_type: 'Reptilian', 
    description: 'Dragons are large, serpentine creatures that appear in the folklore of many cultures around the world. They are often depicted as winged, four-legged reptiles capable of breathing fire. In some cultures, dragons are seen as wise and benevolent, while in others, they are feared as destructive monsters.', 
    abilities: 'Fire breathing, flight, immense strength, wisdom', 
    habitat: 'Mountains, caves, and remote islands', 
    image: 'dragon.png', 
    legend: 'Dragons have been a part of human mythology for centuries, often symbolizing power, strength, and good fortune. In Western folklore, they are usually seen as malevolent creatures hoarding treasure and terrorizing villages. In Eastern traditions, such as in China, dragons are revered as benevolent beings associated with water and weather.' 
  },
  { 
    name: 'Unicorn', 
    creature_type: 'Equine', 
    description: 'Unicorns are legendary creatures that have been described since antiquity as beasts with a single large, pointed, spiraling horn projecting from their forehead. They are often depicted as a white horse-like animal, symbolizing purity and grace. Unicorns have been a part of many cultures’ folklore and mythology.', 
    abilities: 'Healing, purity, magical horn', 
    habitat: 'Forests, meadows, and mystical realms', 
    image: 'unicorn.png', 
    legend: 'Unicorns have long been associated with the concept of purity and grace. According to legend, their horn possesses magical healing properties, capable of purifying water and curing diseases. In medieval times, the unicorn was often used as a symbol of Christ, representing purity and holiness.' 
  }
]

creatures_data.each do |creature_data|
  creature = Creature.find_by(name: creature_data[:name])
  if creature
    creature.update(creature_data)
  else
    Creature.create(creature_data)
  end
end

fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish(fishes)
  fishes.each do |fish_1|
    return fish_1 if fishes.none? {|fish_2| fish_2.length > fish_1.length}
  end
end
# p sluggish(fishes)

def dominant(fishes)
  return fishes if fishes.length < 1
  prob = fishes.first
  longer = fishes[1..-1].select {|fish| fish.length > prob.length}
  shorter = fishes[1..-1].select {|fish| fish.length <= prob.length}
  dominant(longer) + [prob] + dominant(shorter)
end

# p dominant(fishes).first

def clever(fishes)
  longest = fishes.shift
  fishes.each do |fish|
    if fish.length > longest.length
      longest = fish
    end
  end
  longest
end

# p clever(fishes)


tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(tile_dir, tiles_array)
  tiles_array.each.with_index do |tile, i|
    return i if tile_dir == tile
  end
end

# p slow_dance("up", tiles_array)
# p slow_dance("right-down", tiles_array)


new_tiles_data_structure = {}
tiles_array.each.with_index {|tile, i| new_tiles_data_structure[tile] = i}
p new_tiles_data_structure

def fast_dance(tile_dir, new_tiles_data_structure)
  new_tiles_data_structure[tile_dir]
end

p fast_dance("up", new_tiles_data_structure)
p fast_dance("right-down", new_tiles_data_structure)

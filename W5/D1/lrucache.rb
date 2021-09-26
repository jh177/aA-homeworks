class LRUCache
  def initialize(cache_size)
    @cache_size = cache_size
    @cache_array = []
  end

  def count
    @cache_array.size
    # returns number of elements currently in cache
  end

  def add(el) #O(n)
    if @cache_array.include?(el)
      @cache_array.delete(el)
    elsif count == @cache_size
      @cache_array.shift
    end
    @cache_array.push(el)
    # adds element to cache according to LRU principle
  end

  def show
    p @cache_array
    # shows the items in the cache, with the LRU item first
  end

  private
  # helper methods go here!

end


johnny_cache = LRUCache.new(4)

johnny_cache.add("I walk the line")
johnny_cache.add(5)

p johnny_cache.count # => returns 2

johnny_cache.add([1,2,3])
johnny_cache.add(5)
johnny_cache.add(-5)
johnny_cache.add({a: 1, b: 2, c: 3})
johnny_cache.add([1,2,3,4])
johnny_cache.add("I walk the line")
johnny_cache.add(:ring_of_fire)
johnny_cache.add("I walk the line")
johnny_cache.add({a: 1, b: 2, c: 3})


johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]
require "memcache"

server = ['localhost:11211']
option = {}

cache = MemCache.new(server,option)

cache['key1'] = 123
cache['key2'] = "あいうえお"
cache['key3'] = %w(hoge, fuga)
cache['key4'] = {:foo => 1, :bar => "a"}

p cache['key1']
p cache['key2']
p cache['key3']
p cache['key4']

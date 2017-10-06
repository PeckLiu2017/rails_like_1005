# require 测试框架
require "rack/test"
require "test/unit"

# Always use local Rulers first
d = File.join(File.dirname(__FILE__), "..", "lib")
# d = File.join(File.dirname(__FILE__), "lib") =>
# "/Users/peckliu/Ruby_project/rails_like_1005/test/lib"
$LOAD_PATH.unshift File.expand_path(d)

require "rails_like_1005"
# ? 最后一个require是什么意思
# 加入路径之后还要 require lib/rails_like_1005.rb
# 这样代码才能使用吧

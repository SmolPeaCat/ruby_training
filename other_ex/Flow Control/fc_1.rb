# frozen_string_literal: true
foo_1 = (32 * 4) >= 129
foo_2 = false != !true
foo_3 = true == 4
foo_4 = false == (847 == '847')
foo_5 = (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false

num = 5

(1..num).each { |i|
  puts eval("foo_#{i}")
}
# 1) How many of these words end with an x?
# n.b. they currently all end with a "\n"

words = File.readlines '/usr/share/dict/words'
puts words.count # => 235886 on my machine
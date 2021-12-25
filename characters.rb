module Characters
  CHARS = "abcdefghijklmnopqrstuvwxyz"
  DIGITS = "0123456789"
  SPECIAL_CHARS = "[]{}().?-/\\*+$#!^&="
  ALL_ELEMS = "#{CHARS}#{CHARS.upcase}#{DIGITS}#{SPECIAL_CHARS}" 
end
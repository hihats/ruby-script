# ARGV[0] : filename
# ARGV[1] : string, the string should be included
# ARGV[2] : boolean, true:included false:not included

contents = open(ARGV[0]).read
include_flg = ARGV[2].nil? ? true : ARGV[2]
str_arr = ARGV[1]
str_arr = [ARGV[1]] if ARGV.is_a?(String)
contents.each_line do |row|
  if include_flg
    p row if str_arr.each |str| do row.include?(str) end
  else
    p row unless row.include?(ARGV[1])
  end
end

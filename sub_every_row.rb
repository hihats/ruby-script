# ARGV[0] : filename
# ARGV[1] : string, the string should be included
# ARGV[2] : boolean, true:included false:not included

contents = open(ARGV[0]).read
replace_str = ARGV[2].nil? ? "" : ARGV[2]
pattern = ARGV[1]
p pattern
contents.each_line do |row|
  p row.sub(/#{pattern}/, replace_str)
end

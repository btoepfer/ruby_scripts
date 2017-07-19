
f = File.new('plzbw.txt')
f2 = File.new('plzbw2.txt', 'w')
plz = ""
f.each do |line|
  m = /([0-9]+)\-([0-9]+)/.match(line)
  if m then
    ($1..$2).each {|l| plz = l}
  else
    plz = line
  end
  f2.puts "insert into plzbw(plz) values (#{plz.chomp});"
end
f2.close
f.close

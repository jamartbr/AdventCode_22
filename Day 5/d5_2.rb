a,b=File.open('input5.txt').readlines.join.split("\n\n").map{_1.split("\n")}.map.with_index{|n,i|n=(i==0 ? n.map(&:chars).transpose.select{_1[_1.size-1].match?(/\d/)}.each{_1.pop}.map{_1.reject{|x|x==" "}} : n.join.scan(/\d+/).map(&:to_i).each_slice(3).to_a)}
b.each{|n|a[n[2]-1].reverse!.concat(a[n[1]-1].slice!(0,n[0]).to_a.reverse).reverse!}
puts a.map{_1[0]}.join
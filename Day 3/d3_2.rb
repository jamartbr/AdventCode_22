p File.open('input3.txt').readlines.map(&:chars).each_slice(3).map{(_1.reduce(:&)[0].ord-38)%58}.sum

=begin
a-z=1-26
A-Z=27-52

'a'=97  'z'=122 'A'=65  'Z'=90

'a'-'A'=32  'z'-'a'=25

x=(x.ord-65+27
        -38
=end
class QuesLevel 
def getlevel(count)
#case count
if(count <= 10)
return 0
elsif (count <= 20)
return 1
elsif (count <= 30)
return 2
elsif (count <= 40)
return 3
else (count <= 50)
return 4
end 
end

def geta(level)
case level
when 0
return rand(1..5)


when 1
return rand(10..20)


when 2
return rand(51..75)

when 3
return rand(100..150)

when 4
return rand(301..500)
end 
end 

def getb(level)
case level
when 0
return rand(5..9)

when 1
return rand(21..50)

when 2
return rand(75..99)

when 3
return rand(150..300)

when 4
return rand(501..999)
end 
end 

end 

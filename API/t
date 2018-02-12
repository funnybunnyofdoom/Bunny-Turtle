--Custom turtle API
 
function help()
  term.write("Bunny Turtle API || Page 1/1")
  term.setCursorPos(1,2)
  term.write("================")
  term.setCursorPos(1,3)
  term.write("t.df() - dig and move forward")
  term.setCursorPos(1,4)
  term.write("t.du() - dig and move up")
  term.setCursorPos(1,5)
  term.write("t,dd() - dig and move down")
  term.setCursorPos(1,6)
  term.write("t.re() - Right elbow turn")
  term.setCursorPos(1,7)
  term.write("t.le() - left elbow turn" )
  term.setCursorPos(1,8)
  term.write("t.maxDown() - dig to bedrock")
  term.setCursorPos(1,9)
  term.write("t.maxUp() - dig to top of world")
  term.setCursorPos(1,10)
  term.write("t.dump() - dump all items")
  term.setCursorPos(1,11)
  term.write("t.enderChest() - Empty into enderchest")
  term.setCursorPos(1,12)
  term.write("Page 1/1")
  term.setCursorPos(1,13)
end
 
function df() -- dig forward
  while turtle.detect() do
    turtle.dig()
  end
  turtle.forward()
end
 
function du() -- dig up
  while turtle.detectUp() do
    turtle.digUp()
  end
  blocked = turtle.up()
  return blocked
end
 
function dd() -- dig down
  turtle.digDown()
  turtle.down()
end
 
function re() --right elbow turn
--right, forward, right
  turtle.turnRight()
  df() --dig forward
  turtle.turnRight()
end
 
function le() --left elbow turn
  turtle.turnLeft()
  df() --dig forward
  turtle.turnLeft()
end
 
function maxDown() --Go down max distance
  bottom = true
  distance = 1
  while bottom == true do
    turtle.digDown()
    bottom = turtle.down()
    distance = distance + 1
  end
  for i=0,distance-3 do
    turtle.up()
  end
end
 
function maxUp() --go up max distance
  top = true
  dist = 1
  while top == true do
    top = du()
    dist = dist+1
  end
  for j=0,dist-1 do
    turtle.down()
  end
  --Reached the top now go down
end
 
function dump()
  local c = 1
  while c <= 16 do
    turtle.select(c)
    turtle.drop(64)
    c = c + 1
  end
  turtle.select(1)
end
 
function enderChest() --empty items into an enderchest
   local found = false
   local i = 1
   local select = 0
   
   while found == false and i <= 16 do
     turtle.select(i)
     local N = "EnderStorage:enderChest"    
     local D = turtle.getItemDetail()
     if type(D) == "table" then  
       if D.name == N then
         select = i
         found = true
       end
     end
     i = i + 1
   end
   turtle.select(1)
   if select == 0 then
     term.write("No enderchest available.")
   else
     turtle.select(select)
     turtle.place()
     dump()
     turtle.select(1)
     turtle.dig()
   end
   
end

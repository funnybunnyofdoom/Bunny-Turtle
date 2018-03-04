function desktop()
  local myWindow = window.create(term.current(),2,2,49,16)
  myWindow.setBackgroundColor(colors.lightGray)
  myWindow.clear()
end

function startBar()
  local myWindow = window.create(term.current(),1,18,50,19)
  
  myWindow.setBackgroundColor(colors.gray)
  myWindow.clear()
end

desktop()
startBar()

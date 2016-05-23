#Easier to use for Array
Array::first ?= (n) ->
  if n? then @[0...(Math.max 0, n)] else @[0]

Array::last ?= (n) ->
  if n? then @[(Math.max @length - n, 0)...] else @[@length - 1]


# polygenJS 
root = GLOBAL ? this

#initial data
data = 
  target_element:""
  circle_diameter:""
  sides:""
  start_at_x:""
  start_at_y:""
  radius:""
  inner_color:"white"
  line_color:"black"
  line_width:1

root.polygen = (input_data) -> 

  #initializing
  for key , value  of input_data
    data[key] = value 

  if data.start_at_x == "" 
    data.start_at_x = data.circle_diameter / 2
  if data.start_at_y == "" 
    data.start_at_y = data.circle_diameter / 2
  if data.radius == "" 
    data.radius = data.circle_diameter / 2 - 10

  target_name = data.target_element.split("#").last()+"_polygen"
  html = "<canvas class='polygen' id='"+target_name+"' width='"+data.circle_diameter+"'height='"+data.circle_diameter+"'></canvas>" 
  $(data.target_element).append(html)  
  if data.sides > 2
    $ctx = $("#"+target_name)[0].getContext("2d")
    angle = Math.PI*2/data.sides
    $ctx.save()
    $ctx.fillStyle = data.inner_color 
    $ctx.strokeStyle =  data.line_color 
    $ctx.lineWidth = data.line_width 
    $ctx.translate(data.start_at_x,data.start_at_y)
    $ctx.moveTo(0 , -parseInt(data.radius))
    $ctx.beginPath()
    for i in [0...data.sides] 
      $ctx.rotate(angle)
      $ctx.lineTo(0 , -parseInt(data.radius))
    $ctx.closePath()
    $ctx.stroke()
    $ctx.fill()
    $ctx.restore()
  else
    console.log "a polygon should has sides more than 3 sides"


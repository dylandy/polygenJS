#PolygenJS

A simple polygon generater using html canvas.

Notice : **You need to require jquery first**
##Get Started

```
<div id="test"></div>
<script>
  polygen(
    {
      "target_element":"#test",
      "side":3,
      "circle_diameter":400
    }
  )
</script>
```
##Options

The first three options which don't have default values are neccessary.

| Options         | Default        | Data Type | Meaning                                        |
|-----------------|----------------|-----------|------------------------------------------------|
| target_element  | undefined      | String    | selector for element                           |
| circle_diameter | undefined      | Integer   | circle that surrounded polygon                 |
| sides           | undefined      | Integer   | sides that polygon has                         |
| start_at_x      | center         | Integer   | the x coordinate where your polygon start from |
| start_at_y      | center         | Integer   | the y coordinate where your polygon start from |
| radius          | diameter/2 -10 | Integer   | the radius from starting point                 |
| inner_color     | white          | String    | color filled in the polygon                    |
| line_color      | black          | String    | the line color for polygon                     |
| line_width      | 1              | Integer   | the width of polygon                           |

##LICENSE
This project is licensed under MIT License. Please check out the LICENSE.md for further detail.


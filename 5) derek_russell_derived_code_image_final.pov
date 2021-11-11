
camera { perspective location < 0, 33 , -5 > look_at < 0 , 30 , 0 >}

light_source { < 0, 40 , -5 >, color rgb < 252 , 212 , 64 > spotlight point_at <0, 0, 0>  fade_distance 30  } 


//top union 
union {
object { triangle { < 0, 30, 1.29 >, < -.5, 30, .43 >, < .5, 30, .43 >  pigment { color  rgb <255, 215, 0> }  finish {brilliance 5 }}} 

object { sphere { <0,30,1.29> .5 pigment { color  rgb <255, 255, 255> } finish {brilliance 5 }} }
}
//Left intersection
intersection {
object { triangle { < -.5, 30 , .43 >, < -1, 30, -.43 >, < 0, 30, -.43 >  pigment { color  rgb <255, 215, 0> }  finish {brilliance 5 }}}

object { sphere { <-1,30,-.43> .5 pigment { color  rgb <255, 255, 255> } finish {brilliance 5 }} }
}
//Right difference  
difference {
object { triangle { < .5, 30 , .43 >, < 0, 30, -.43 >, < 1, 30, -.43 >  pigment { color  rgb <255, 215, 0> }  finish {brilliance 5 }}} 

object { sphere { <1,30,-.43> .5 pigment { color  rgb <255, 255, 255> } finish {brilliance 5 }} }
}

object { plane { <0, 1, 0> , 4  pigment { color  rgb <0, 128, 0> }  finish {brilliance 5 }}}


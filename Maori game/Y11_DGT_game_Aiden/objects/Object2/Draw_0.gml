draw_self();
//healthbar
var barWidth = 100;
var barHeight = 10;
var barx = x - barWidth/2;
var bary = y - 15;
var health_percentage = hp / max_hp;
var bar_fillw = barWidth * health_percentage;
draw_set_color(c_gray);
draw_rectangle(barx, bary,barx + barWidth, bary + barHeight, false)
draw_set_color(c_red)
draw_rectangle(barx, bary, barx + bar_fillw, bary+barHeight, false)
//dash meter
var DbarWidth = 100
var Dbar_Height = 10
var Dbarx = x - DbarWidth/2
var Dbary = y - 35
var Dash_percentage = CDash / max_CDash;
var Dbar_w = DbarWidth * Dash_percentage;
draw_set_color(c_gray);
draw_rectangle(Dbarx, Dbary, Dbarx + Dbar_w, Dbary + Dbar_Height, false)
draw_set_color(c_blue);
draw_rectangle(Dbarx, Dbary, Dbarx + Dbar_w, Dbary + Dbar_Height, false)


//if (distance_to_object(House) < 20){
//	instance_create_layer(x, y, "Collisions", UI1	)

//}
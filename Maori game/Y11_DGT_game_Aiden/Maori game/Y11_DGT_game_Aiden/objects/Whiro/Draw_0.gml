
//draw event
draw_self();
var barWidth = 100;
var barHeight = 10;
var barx = x - barWidth/2;
var bary = y - 15;
var health_percentage = Whp / maxWhp;
var bar_fillw = barWidth * health_percentage;
draw_set_color(c_gray);
draw_rectangle(barx, bary,barx+barWidth,bary+barHeight, false)
draw_set_color(c_red)
draw_rectangle(barx, bary, barx + bar_fillw, bary+barHeight, false);
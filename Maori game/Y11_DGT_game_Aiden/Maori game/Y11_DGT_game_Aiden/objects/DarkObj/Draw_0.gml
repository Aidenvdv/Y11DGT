draw_self();
var dbarwidth = 100;
var dbarheight = 20;
var dbarcent = Dhealth / max_Deahlth;
var dbarx = x - dbarwidth;
var dbary = y - 20;
var dbarfill = dbarwidth * dbarcent;
draw_set_color(c_gray);
draw_rectangle(dbarx, dbary, dbarx + dbarfill, dbary+dbarheight, false)
draw_set_color(c_red);
draw_rectangle(dbarx, dbary, dbarx + dbarfill, dbary+dbarheight, false)
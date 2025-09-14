//move the camera over the player and zoom the camera to be closer to the camera

#region move the camera over the player at all times and have it centered over the player
halfViewWidth = camera_get_view_width(view_camera[0]) / 2;
halfViewHeight = camera_get_view_height(view_camera[0]) / 2;
camera_set_view_pos(view_camera[0], x - halfViewWidth, y - halfViewHeight);
#endregion camera basics

#region follow and zoom
var _cam =	view_camera[0];
var _zoom = 1;
camera_set_view_size(_cam, display_get_width() / _zoom, display_get_height() / _zoom);

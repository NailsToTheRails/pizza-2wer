    var cam_width = camera_get_view_width(view_camera[0])
    var cam_height = camera_get_view_height(view_camera[0])
    var cam_x = camera_get_view_x(view_camera[0])
    var cam_y = camera_get_view_y(view_camera[0])
var far = layer_get_id("Background_far")
var near = layer_get_id("Background_near")
var close = layer_get_id("Background_close")
var veryclose = layer_get_id("Background_veryclose")
var still = layer_get_id("Background_still")
layer_x(near, lerp(0, camera_get_view_x(view_camera[0]), 0.6 ) );
layer_x(far, lerp(0, camera_get_view_x(view_camera[0]), 0.7 ) );
layer_x(close, lerp(0, camera_get_view_x(view_camera[0]), 0.5 ) );
layer_x(veryclose, lerp(0, camera_get_view_x(view_camera[0]), 0.4 ) );
layer_x(still, camera_get_view_x(view_camera[0]));
layer_y(still, camera_get_view_y(view_camera[0]));
var ratio = display_get_gui_width() / 640
var ratioVertical = display_get_gui_height() / 480
draw_sprite_ext(spr_black, 0, 0, 0, (1 * ratio), (1 * ratioVertical), 0, c_white, black_fade)
draw_set_font(settings_font)
draw_sprite_ext(spr_controls_config, 0, (220 * ratio), (22.5 * ratioVertical), (2 * ratio), (2 * ratioVertical), 0, c_white, text_black_fade)
draw_sprite_ext(spr_button_scale, 0, (120.5 * ratio), (75 * ratioVertical), (2 * ratio), (2 * ratioVertical), 0, c_white, text_black_fade)
draw_sprite_ext(spr_arrow_leftright, 0, (459.5 * ratio), (75 * ratioVertical), (2 * ratio), (2 * ratioVertical), 0, c_white, text_black_fade)
draw_sprite_ext(spr_analog_scale, 0, (120.5 * ratio), (121 * ratioVertical), (2 * ratio), (2 * ratioVertical), 0, c_white, text_black_fade)
draw_sprite_ext(spr_arrow_leftright, 0, (459.5 * ratio), (121 * ratioVertical), (2 * ratio), (2 * ratioVertical), 0, c_white, text_black_fade)
draw_sprite_ext(spr_analog_type, 0, (124 * ratio), (167 * ratioVertical), (2 * ratio), (2 * ratioVertical), 0, c_white, text_black_fade)
draw_sprite_ext(spr_arrow_leftright, 0, (459.5 * ratio), (167 * ratioVertical), (2 * ratio), (2 * ratioVertical), 0, c_white, text_black_fade)
draw_sprite_ext(spr_controls_opacity, 0, (106.5 * ratio), (213 * ratioVertical), (2 * ratio), (2 * ratioVertical), 0, c_white, text_black_fade)
draw_sprite_ext(spr_arrow_leftright, 0, (459.5 * ratio), (213 * ratioVertical), (2 * ratio), (2 * ratioVertical), 0, c_white, text_black_fade)
draw_sprite_ext(spr_reset_config, 0, (241 * ratio), (412.25 * ratioVertical), (2 * ratio), (2 * ratioVertical), 0, c_white, text_black_fade)
draw_sprite_ext(spr_activar_mando, 0, (241 * ratio), (275 * ratioVertical), (2 * ratio), (2 * ratioVertical), 0, c_white, text_black_fade);
draw_text_transformed_colour((settings_num_x * ratio), (67 * ratioVertical), button_scale, (1 * ratio), (1 * ratioVertical), 0, c_white, c_white, c_white, c_white, text_black_fade)
draw_text_transformed_colour((settings_num_x * ratio), (113 * ratioVertical), analog_scale, (1 * ratio), (1 * ratioVertical), 0, c_white, c_white, c_white, c_white, text_black_fade)
draw_text_transformed_colour((settings_num_x * ratio), (159 * ratioVertical), joystick_type, (1 * ratio), (1 * ratioVertical), 0, c_white, c_white, c_white, c_white, text_black_fade)
draw_text_transformed_colour((settings_num_x * ratio), (205 * ratioVertical), controls_opacity, (1 * ratio), (1 * ratioVertical), 0, c_white, c_white, c_white, c_white, text_black_fade)
function get_touch_variant(prefixed_name, base_sprite, use_variant)
{
    var variant = asset_get_index(prefixed_name);
    return (variant != -1 && use_variant) ? variant : base_sprite;
}

var in_castle = is_in_castle_town();
var zone_prefix = in_castle ? "spr_ct_" : "spr_dw_";
var use_variant = in_castle || global.darkzone;

draw_sprite_ext(get_touch_variant(zone_prefix + "z_button", spr_z_button, use_variant), keyboard_check(ord("Z")), (zx * ratio), (zy * ratioVertical), (button_scale * ratio), (button_scale * ratioVertical), 0, c_white, controls_opacity)
draw_sprite_ext(get_touch_variant(zone_prefix + "x_button", spr_x_button, use_variant), keyboard_check(ord("X")), (xx * ratio), (xy * ratioVertical), (button_scale * ratio), (button_scale * ratioVertical), 0, c_white, controls_opacity)
draw_sprite_ext(get_touch_variant(zone_prefix + "c_button", spr_c_button, use_variant), keyboard_check(ord("C")), (cx * ratio), (cy * ratioVertical), (button_scale * ratio), (button_scale * ratioVertical), 0, c_white, controls_opacity)
draw_sprite_ext(get_touch_variant(zone_prefix + "joybase", spr_joybase, use_variant), joystick_type, (analog_posx * ratio), (analog_posy * ratioVertical), (analog_scale * ratio), (analog_scale * ratioVertical), 0, c_white, controls_opacity)
draw_sprite_ext(get_touch_variant(zone_prefix + "joystick", spr_joystick, use_variant), joystick_type, (analog_center_x * ratio), (analog_center_y * ratioVertical), (analog_scale * ratio), (analog_scale * ratioVertical), 0, c_white, controls_opacity)
draw_sprite_ext(get_touch_variant(zone_prefix + "settings", spr_settings, use_variant), keyboard_check(92 /* ord("\") */), (settingsx * ratio), (settingsy * ratioVertical), (button_scale/* * 0.5*/ * ratio), (button_scale/* * 0.5*/ * ratioVertical), 0, c_white, controls_opacity)

if (variable_global_exists("chapter") && global.darkzone && !in_castle && global.chapter == 2)
    draw_sprite_ext(get_touch_variant(zone_prefix + "f1_button", spr_f1_button, use_variant), keyboard_check(vk_f1), (f1x * ratio), (f1y * ratioVertical), (button_scale/* * 0.5*/ * ratio), (button_scale/* * 0.5*/ * ratioVertical), 0, c_white, controls_opacity);

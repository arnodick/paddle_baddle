    // Creates a surface that the whole screen will be drawn on
screen = surface_create(display_get_gui_width(), display_get_gui_height());
view_surface_id[0] = screen;

    // If the screen surface can't be created because surfaces are not supported by the graphics card, then:
    // Destroy the oScreen object, reverting to the viewport method
if (screen = -1)
{
    instance_destroy();
}

    // Unused for some reason now?
    // screen_scale = 4;

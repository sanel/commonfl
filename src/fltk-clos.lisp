
(cl:defclass fl()
  ((ff-pointer :reader ff-pointer)))


(cl:defclass fl-widget-tracker()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj fl-widget-tracker) &key wi)
  (setf (slot-value obj 'ff-pointer) (new_Fl_Widget_Tracker wi)))

(cl:defmethod widget ((self fl-widget-tracker))
  (Fl_Widget_Tracker_widget (ff-pointer self)))

(cl:defmethod deleted ((self fl-widget-tracker))
  (Fl_Widget_Tracker_deleted (ff-pointer self)))

(cl:defmethod exists ((self fl-widget-tracker))
  (Fl_Widget_Tracker_exists (ff-pointer self)))


(cl:defclass fl-widget()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod draw ((self fl-widget))
  (Fl_Widget_draw (ff-pointer self)))

(cl:defmethod handle ((self fl-widget) (event cl:integer))
  (Fl_Widget_handle (ff-pointer self) event))

(cl:defmethod parent ((self fl-widget))
  (Fl_Widget_parent (ff-pointer self)))

(cl:defmethod parent ((self fl-widget) p)
  (Fl_Widget_parent (ff-pointer self) p))

(cl:defmethod type ((self fl-widget))
  (Fl_Widget_type (ff-pointer self)))

(cl:defmethod type ((self fl-widget) (t-arg1 cl:integer))
  (Fl_Widget_type (ff-pointer self) t-arg1))

(cl:defmethod x ((self fl-widget))
  (Fl_Widget_x (ff-pointer self)))

(cl:defmethod y ((self fl-widget))
  (Fl_Widget_y (ff-pointer self)))

(cl:defmethod w ((self fl-widget))
  (Fl_Widget_w (ff-pointer self)))

(cl:defmethod h ((self fl-widget))
  (Fl_Widget_h (ff-pointer self)))

(cl:defmethod resize ((self fl-widget) (x cl:integer) (y cl:integer) (w cl:integer) (h cl:integer))
  (Fl_Widget_resize (ff-pointer self) x y w h))

(cl:defmethod damage-resize ((self fl-widget) (arg1 cl:integer) (arg2 cl:integer) (arg3 cl:integer) (arg4 cl:integer))
  (Fl_Widget_damage_resize (ff-pointer self) arg1 arg2 arg3 arg4))

(cl:defmethod position ((self fl-widget) (X cl:integer) (Y cl:integer))
  (Fl_Widget_position (ff-pointer self) X Y))

(cl:defmethod size ((self fl-widget) (W cl:integer) (H cl:integer))
  (Fl_Widget_size (ff-pointer self) W H))

(cl:defmethod align ((self fl-widget))
  (Fl_Widget_align (ff-pointer self)))

(cl:defmethod align ((self fl-widget) (alignment cl:integer))
  (Fl_Widget_align (ff-pointer self) alignment))

(cl:defmethod box ((self fl-widget))
  (Fl_Widget_box (ff-pointer self)))

(cl:defmethod box ((self fl-widget) (new_box cl:integer))
  (Fl_Widget_box (ff-pointer self) new_box))

(cl:defmethod color ((self fl-widget))
  (Fl_Widget_color (ff-pointer self)))

(cl:defmethod color ((self fl-widget) (bg cl:integer))
  (Fl_Widget_color (ff-pointer self) bg))

(cl:defmethod selection-color ((self fl-widget))
  (Fl_Widget_selection_color (ff-pointer self)))

(cl:defmethod selection-color ((self fl-widget) (a cl:integer))
  (Fl_Widget_selection_color (ff-pointer self) a))

(cl:defmethod color ((self fl-widget) (bg cl:integer) (sel cl:integer))
  (Fl_Widget_color (ff-pointer self) bg sel))

(cl:defmethod label ((self fl-widget))
  (Fl_Widget_label (ff-pointer self)))

(cl:defmethod label ((self fl-widget) (text cl:string))
  (Fl_Widget_label (ff-pointer self) text))

(cl:defmethod copy-label ((self fl-widget) (new_label cl:string))
  (Fl_Widget_copy_label (ff-pointer self) new_label))

(cl:defmethod label ((self fl-widget) (a cl:integer) (b cl:string))
  (Fl_Widget_label (ff-pointer self) a b))

(cl:defmethod labeltype ((self fl-widget))
  (Fl_Widget_labeltype (ff-pointer self)))

(cl:defmethod labeltype ((self fl-widget) (a cl:integer))
  (Fl_Widget_labeltype (ff-pointer self) a))

(cl:defmethod labelcolor ((self fl-widget))
  (Fl_Widget_labelcolor (ff-pointer self)))

(cl:defmethod labelcolor ((self fl-widget) (c cl:integer))
  (Fl_Widget_labelcolor (ff-pointer self) c))

(cl:defmethod labelfont ((self fl-widget))
  (Fl_Widget_labelfont (ff-pointer self)))

(cl:defmethod labelfont ((self fl-widget) (f cl:integer))
  (Fl_Widget_labelfont (ff-pointer self) f))

(cl:defmethod labelsize ((self fl-widget))
  (Fl_Widget_labelsize (ff-pointer self)))

(cl:defmethod labelsize ((self fl-widget) (pix cl:integer))
  (Fl_Widget_labelsize (ff-pointer self) pix))

(cl:defmethod image ((self fl-widget))
  (Fl_Widget_image (ff-pointer self)))

(cl:defmethod image ((self fl-widget))
  (Fl_Widget_image (ff-pointer self)))

(cl:defmethod image ((self fl-widget) img)
  (Fl_Widget_image (ff-pointer self) img))

(cl:defmethod deimage ((self fl-widget))
  (Fl_Widget_deimage (ff-pointer self)))

(cl:defmethod deimage ((self fl-widget))
  (Fl_Widget_deimage (ff-pointer self)))

(cl:defmethod deimage ((self fl-widget) img)
  (Fl_Widget_deimage (ff-pointer self) img))

(cl:defmethod tooltip ((self fl-widget))
  (Fl_Widget_tooltip (ff-pointer self)))

(cl:defmethod tooltip ((self fl-widget) (text cl:string))
  (Fl_Widget_tooltip (ff-pointer self) text))

(cl:defmethod copy-tooltip ((self fl-widget) (text cl:string))
  (Fl_Widget_copy_tooltip (ff-pointer self) text))

(cl:defmethod callback ((self fl-widget))
  (Fl_Widget_callback (ff-pointer self)))

(cl:defmethod callback ((self fl-widget) cb p)
  (Fl_Widget_callback (ff-pointer self) cb p))

(cl:defmethod callback ((self fl-widget) cb)
  (Fl_Widget_callback (ff-pointer self) cb))

(cl:defmethod callback ((self fl-widget) cb)
  (Fl_Widget_callback (ff-pointer self) cb))

(cl:defmethod callback ((self fl-widget) cb (p cl:integer))
  (Fl_Widget_callback (ff-pointer self) cb p))

(cl:defmethod user-data ((self fl-widget))
  (Fl_Widget_user_data (ff-pointer self)))

(cl:defmethod user-data ((self fl-widget) v)
  (Fl_Widget_user_data (ff-pointer self) v))

(cl:defmethod argument ((self fl-widget))
  (Fl_Widget_argument (ff-pointer self)))

(cl:defmethod argument ((self fl-widget) (v cl:integer))
  (Fl_Widget_argument (ff-pointer self) v))

(cl:defmethod when ((self fl-widget))
  (Fl_Widget_when (ff-pointer self)))

(cl:defmethod when ((self fl-widget) (i cl:integer))
  (Fl_Widget_when (ff-pointer self) i))

(cl:defmethod visible ((self fl-widget))
  (Fl_Widget_visible (ff-pointer self)))

(cl:defmethod visible-r ((self fl-widget))
  (Fl_Widget_visible_r (ff-pointer self)))

(cl:defmethod show ((self fl-widget))
  (Fl_Widget_show (ff-pointer self)))

(cl:defmethod hide ((self fl-widget))
  (Fl_Widget_hide (ff-pointer self)))

(cl:defmethod set-visible ((self fl-widget))
  (Fl_Widget_set_visible (ff-pointer self)))

(cl:defmethod clear-visible ((self fl-widget))
  (Fl_Widget_clear_visible (ff-pointer self)))

(cl:defmethod active ((self fl-widget))
  (Fl_Widget_active (ff-pointer self)))

(cl:defmethod active-r ((self fl-widget))
  (Fl_Widget_active_r (ff-pointer self)))

(cl:defmethod activate ((self fl-widget))
  (Fl_Widget_activate (ff-pointer self)))

(cl:defmethod deactivate ((self fl-widget))
  (Fl_Widget_deactivate (ff-pointer self)))

(cl:defmethod output ((self fl-widget))
  (Fl_Widget_output (ff-pointer self)))

(cl:defmethod set-output ((self fl-widget))
  (Fl_Widget_set_output (ff-pointer self)))

(cl:defmethod clear-output ((self fl-widget))
  (Fl_Widget_clear_output (ff-pointer self)))

(cl:defmethod takesevents ((self fl-widget))
  (Fl_Widget_takesevents (ff-pointer self)))

(cl:defmethod changed ((self fl-widget))
  (Fl_Widget_changed (ff-pointer self)))

(cl:defmethod set-changed ((self fl-widget))
  (Fl_Widget_set_changed (ff-pointer self)))

(cl:defmethod clear-changed ((self fl-widget))
  (Fl_Widget_clear_changed (ff-pointer self)))

(cl:defmethod simple-keyboard ((self fl-widget))
  (Fl_Widget_simple_keyboard (ff-pointer self)))

(cl:defmethod set-simple-keyboard ((self fl-widget))
  (Fl_Widget_set_simple_keyboard (ff-pointer self)))

(cl:defmethod set-normal-keyboard ((self fl-widget))
  (Fl_Widget_set_normal_keyboard (ff-pointer self)))

(cl:defmethod take-focus ((self fl-widget))
  (Fl_Widget_take_focus (ff-pointer self)))

(cl:defmethod set-visible-focus ((self fl-widget))
  (Fl_Widget_set_visible_focus (ff-pointer self)))

(cl:defmethod clear-visible-focus ((self fl-widget))
  (Fl_Widget_clear_visible_focus (ff-pointer self)))

(cl:defmethod visible-focus ((self fl-widget) (v cl:integer))
  (Fl_Widget_visible_focus (ff-pointer self) v))

(cl:defmethod visible-focus ((self fl-widget))
  (Fl_Widget_visible_focus (ff-pointer self)))

(cl:defmethod do-callback ((self fl-widget))
  (Fl_Widget_do_callback (ff-pointer self)))

(cl:defmethod do-callback ((self fl-widget) (o fl-widget) (arg cl:integer))
  (Fl_Widget_do_callback (ff-pointer self) (ff-pointer o) arg))

(cl:defmethod do-callback ((self fl-widget) (o fl-widget) arg)
  (Fl_Widget_do_callback (ff-pointer self) (ff-pointer o) arg))

(cl:defmethod test-shortcut ((self fl-widget))
  (Fl_Widget_test_shortcut (ff-pointer self)))

(cl:defmethod -set-fullscreen ((self fl-widget))
  (Fl_Widget__set_fullscreen (ff-pointer self)))

(cl:defmethod -clear-fullscreen ((self fl-widget))
  (Fl_Widget__clear_fullscreen (ff-pointer self)))

(cl:defmethod contains ((self fl-widget) (w fl-widget))
  (Fl_Widget_contains (ff-pointer self) (ff-pointer w)))

(cl:defmethod inside ((self fl-widget) (wgt fl-widget))
  (Fl_Widget_inside (ff-pointer self) (ff-pointer wgt)))

(cl:defmethod redraw ((self fl-widget))
  (Fl_Widget_redraw (ff-pointer self)))

(cl:defmethod redraw-label ((self fl-widget))
  (Fl_Widget_redraw_label (ff-pointer self)))

(cl:defmethod damage ((self fl-widget))
  (Fl_Widget_damage (ff-pointer self)))

(cl:defmethod clear-damage ((self fl-widget) (c cl:integer))
  (Fl_Widget_clear_damage (ff-pointer self) c))

(cl:defmethod damage ((self fl-widget) (c cl:integer))
  (Fl_Widget_damage (ff-pointer self) c))

(cl:defmethod damage ((self fl-widget) (c cl:integer) (x cl:integer) (y cl:integer) (w cl:integer) (h cl:integer))
  (Fl_Widget_damage (ff-pointer self) c x y w h))

(cl:defmethod draw-label ((self fl-widget) (arg1 cl:integer) (arg2 cl:integer) (arg3 cl:integer) (arg4 cl:integer) (arg5 cl:integer))
  (Fl_Widget_draw_label (ff-pointer self) arg1 arg2 arg3 arg4 arg5))

(cl:defmethod measure-label ((self fl-widget) ww hh)
  (Fl_Widget_measure_label (ff-pointer self) ww hh))

(cl:defmethod window ((self fl-widget))
  (Fl_Widget_window (ff-pointer self)))

(cl:defmethod as-group ((self fl-widget))
  (Fl_Widget_as_group (ff-pointer self)))

(cl:defmethod as-window ((self fl-widget))
  (Fl_Widget_as_window (ff-pointer self)))

(cl:defmethod as-gl-window ((self fl-widget))
  (Fl_Widget_as_gl_window (ff-pointer self)))

(cl:defmethod color2 ((self fl-widget))
  (Fl_Widget_color2 (ff-pointer self)))

(cl:defmethod color2 ((self fl-widget) (a cl:integer))
  (Fl_Widget_color2 (ff-pointer self) a))


(cl:defclass fl-group(Fl_Widget)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod handle ((self fl-group) (arg1 cl:integer))
  (Fl_Group_handle (ff-pointer self) arg1))

(cl:defmethod begin ((self fl-group))
  (Fl_Group_begin (ff-pointer self)))

(cl:defmethod end ((self fl-group))
  (Fl_Group_end (ff-pointer self)))

(cl:defmethod children ((self fl-group))
  (Fl_Group_children (ff-pointer self)))

(cl:defmethod child ((self fl-group) (n cl:integer))
  (Fl_Group_child (ff-pointer self) n))

(cl:defmethod find ((self fl-group) (o fl-widget))
  (Fl_Group_find (ff-pointer self) o))

(cl:defmethod resize ((self fl-group) (arg1 cl:integer) (arg2 cl:integer) (arg3 cl:integer) (arg4 cl:integer))
  (Fl_Group_resize (ff-pointer self) arg1 arg2 arg3 arg4))

(cl:defmethod initialize-instance :after ((obj fl-group) &key (arg0 cl:integer) (arg1 cl:integer) (arg2 cl:integer) (arg3 cl:integer) (arg4 cl:string))
  (setf (slot-value obj 'ff-pointer) (new_Fl_Group arg0 arg1 arg2 arg3 arg4)))

(cl:defmethod add ((self fl-group) (o fl-widget))
  (Fl_Group_add (ff-pointer self) o))

(cl:defmethod insert ((self fl-group) (arg1 fl-widget) (i cl:integer))
  (Fl_Group_insert (ff-pointer self) arg1 i))

(cl:defmethod insert ((self fl-group) (o fl-widget) (before fl-widget))
  (Fl_Group_insert_before (ff-pointer self) o before))

(cl:defmethod remove ((self fl-group) (index cl:integer))
  (Fl_Group_remove (ff-pointer self) index))

(cl:defmethod remove ((self fl-group) (o fl-widget))
  (Fl_Group_remove (ff-pointer self) o))

(cl:defmethod clear ((self fl-group))
  (Fl_Group_clear (ff-pointer self)))

(cl:defmethod resizable ((self fl-group) (o fl-widget))
  (Fl_Group_resizable (ff-pointer self) o))

(cl:defmethod resizable ((self fl-group))
  (Fl_Group_resizable (ff-pointer self)))

(cl:defmethod add-resizable ((self fl-group) (o fl-widget))
  (Fl_Group_add_resizable (ff-pointer self) o))

(cl:defmethod init-sizes ((self fl-group))
  (Fl_Group_init_sizes (ff-pointer self)))

(cl:defmethod clip-children ((self fl-group) (c cl:integer))
  (Fl_Group_clip_children (ff-pointer self) c))

(cl:defmethod clip-children ((self fl-group))
  (Fl_Group_clip_children (ff-pointer self)))

(cl:defmethod as-group ((self fl-group))
  (Fl_Group_as_group (ff-pointer self)))

(cl:defmethod focus ((self fl-group) (W fl-widget))
  (Fl_Group_focus (ff-pointer self) W))

(cl:defmethod -ddfdesign-kludge ((self fl-group))
  (Fl_Group__ddfdesign_kludge (ff-pointer self)))

(cl:defmethod forms-end ((self fl-group))
  (Fl_Group_forms_end (ff-pointer self)))


(cl:defclass fl-end()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj fl-end) &key)
  (setf (slot-value obj 'ff-pointer) (new_Fl_End)))


(cl:defclass fl-window(Fl_Group)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj fl-window) &key (w cl:integer) (h cl:integer) (title cl:string))
  (setf (slot-value obj 'ff-pointer) (new_Fl_Window_3 w h title)))

(cl:defmethod initialize-instance :after ((obj fl-window) &key (x cl:integer) (y cl:integer) (w cl:integer) (h cl:integer) (title cl:string))
  (setf (slot-value obj 'ff-pointer) (new_Fl_Window_5 x y w h title)))

(cl:defmethod handle ((self fl-window) (arg1 cl:integer))
  (Fl_Window_handle (ff-pointer self) arg1))

(cl:defmethod resize ((self fl-window) (X cl:integer) (Y cl:integer) (W cl:integer) (H cl:integer))
  (Fl_Window_resize (ff-pointer self) X Y W H))

(cl:defmethod border ((self fl-window) (b cl:integer))
  (Fl_Window_border (ff-pointer self) b))

(cl:defmethod clear-border ((self fl-window))
  (Fl_Window_clear_border (ff-pointer self)))

(cl:defmethod border ((self fl-window))
  (Fl_Window_border (ff-pointer self)))

(cl:defmethod set-override ((self fl-window))
  (Fl_Window_set_override (ff-pointer self)))

(cl:defmethod override ((self fl-window))
  (Fl_Window_override (ff-pointer self)))

(cl:defmethod set-modal ((self fl-window))
  (Fl_Window_set_modal (ff-pointer self)))

(cl:defmethod modal ((self fl-window))
  (Fl_Window_modal (ff-pointer self)))

(cl:defmethod set-non-modal ((self fl-window))
  (Fl_Window_set_non_modal (ff-pointer self)))

(cl:defmethod non-modal ((self fl-window))
  (Fl_Window_non_modal (ff-pointer self)))

(cl:defmethod set-menu-window ((self fl-window))
  (Fl_Window_set_menu_window (ff-pointer self)))

(cl:defmethod menu-window ((self fl-window))
  (Fl_Window_menu_window (ff-pointer self)))

(cl:defmethod set-tooltip-window ((self fl-window))
  (Fl_Window_set_tooltip_window (ff-pointer self)))

(cl:defmethod tooltip-window ((self fl-window))
  (Fl_Window_tooltip_window (ff-pointer self)))

(cl:defmethod hotspot ((self fl-window) (x cl:integer) (y cl:integer) (offscreen cl:integer))
  (Fl_Window_hotspot (ff-pointer self) x y offscreen))

(cl:defmethod hotspot ((self fl-window) (arg1 fl-widget) (offscreen cl:integer))
  (Fl_Window_hotspot (ff-pointer self) arg1 offscreen))

(cl:defmethod free-position ((self fl-window))
  (Fl_Window_free_position (ff-pointer self)))

(cl:defmethod size-range ((self fl-window) (minw cl:integer) (minh cl:integer) (maxw cl:integer) (maxh cl:integer) (dw cl:integer) (dh cl:integer) (aspect cl:integer))
  (Fl_Window_size_range (ff-pointer self) minw minh maxw maxh dw dh aspect))

(cl:defmethod label ((self fl-window))
  (Fl_Window_label (ff-pointer self)))

(cl:defmethod iconlabel ((self fl-window))
  (Fl_Window_iconlabel (ff-pointer self)))

(cl:defmethod label ((self fl-window) (arg1 cl:string))
  (Fl_Window_label (ff-pointer self) arg1))

(cl:defmethod iconlabel ((self fl-window) (arg1 cl:string))
  (Fl_Window_iconlabel (ff-pointer self) arg1))

(cl:defmethod label ((self fl-window) (label cl:string) (iconlabel cl:string))
  (Fl_Window_label (ff-pointer self) label iconlabel))

(cl:defmethod copy-label ((self fl-window) (a cl:string))
  (Fl_Window_copy_label (ff-pointer self) a))

(cl:defmethod xclass ((self fl-window))
  (Fl_Window_xclass (ff-pointer self)))

(cl:defmethod xclass ((self fl-window) (c cl:string))
  (Fl_Window_xclass (ff-pointer self) c))

(cl:defmethod icon ((self fl-window) arg1)
  (Fl_Window_icon (ff-pointer self) arg1))

(cl:defmethod icons ((self fl-window) arg1 (arg2 cl:integer))
  (Fl_Window_icons (ff-pointer self) arg1 arg2))

(cl:defmethod icon ((self fl-window))
  (Fl_Window_icon (ff-pointer self)))

(cl:defmethod icon ((self fl-window) ic)
  (Fl_Window_icon (ff-pointer self) ic))

(cl:defmethod shown ((self fl-window))
  (Fl_Window_shown (ff-pointer self)))

(cl:defmethod show ((self fl-window))
  (Fl_Window_show (ff-pointer self)))

(cl:defmethod hide ((self fl-window))
  (Fl_Window_hide (ff-pointer self)))

(cl:defmethod fullscreen ((self fl-window))
  (Fl_Window_fullscreen (ff-pointer self)))

(cl:defmethod fullscreen-off ((self fl-window))
  (Fl_Window_fullscreen_off (ff-pointer self)))

(cl:defmethod fullscreen-off ((self fl-window) (X cl:integer) (Y cl:integer) (W cl:integer) (H cl:integer))
  (Fl_Window_fullscreen_off (ff-pointer self) X Y W H))

(cl:defmethod fullscreen-active ((self fl-window))
  (Fl_Window_fullscreen_active (ff-pointer self)))

(cl:defmethod fullscreen-screens ((self fl-window) (top cl:integer) (bottom cl:integer) (left cl:integer) (right cl:integer))
  (Fl_Window_fullscreen_screens (ff-pointer self) top bottom left right))

(cl:defmethod iconize ((self fl-window))
  (Fl_Window_iconize (ff-pointer self)))

(cl:defmethod x-root ((self fl-window))
  (Fl_Window_x_root (ff-pointer self)))

(cl:defmethod y-root ((self fl-window))
  (Fl_Window_y_root (ff-pointer self)))

(cl:defmethod make-current ((self fl-window))
  (Fl_Window_make_current (ff-pointer self)))

(cl:defmethod as-window ((self fl-window))
  (Fl_Window_as_window (ff-pointer self)))

(cl:defmethod cursor ((self fl-window) (c cl:integer) (arg2 cl:integer) (arg3 cl:integer))
  (Fl_Window_cursor (ff-pointer self) c arg2 arg3))

(cl:defmethod cursor ((self fl-window) arg1 (arg2 cl:integer) (arg3 cl:integer))
  (Fl_Window_cursor (ff-pointer self) arg1 arg2 arg3))

(cl:defmethod default-cursor ((self fl-window) (c cl:integer) (arg2 cl:integer) (arg3 cl:integer))
  (Fl_Window_default_cursor (ff-pointer self) c arg2 arg3))

(cl:defmethod decorated-w ((self fl-window))
  (Fl_Window_decorated_w (ff-pointer self)))

(cl:defmethod decorated-h ((self fl-window))
  (Fl_Window_decorated_h (ff-pointer self)))


(cl:defclass fl-button(Fl_Widget)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod handle ((self fl-button) (arg1 cl:integer))
  (Fl_Button_handle (ff-pointer self) arg1))

(cl:defmethod initialize-instance :after ((obj fl-button) &key (X cl:integer) (Y cl:integer) (W cl:integer) (H cl:integer) (L cl:string))
  (setf (slot-value obj 'ff-pointer) (new_Fl_Button X Y W H L)))

(cl:defmethod value ((self fl-button) (v cl:integer))
  (Fl_Button_value (ff-pointer self) v))

(cl:defmethod value ((self fl-button))
  (Fl_Button_value (ff-pointer self)))

(cl:defmethod set ((self fl-button))
  (Fl_Button_set (ff-pointer self)))

(cl:defmethod clear ((self fl-button))
  (Fl_Button_clear (ff-pointer self)))

(cl:defmethod setonly ((self fl-button))
  (Fl_Button_setonly (ff-pointer self)))

(cl:defmethod shortcut ((self fl-button))
  (Fl_Button_shortcut (ff-pointer self)))

(cl:defmethod shortcut ((self fl-button) (s cl:integer))
  (Fl_Button_shortcut (ff-pointer self) s))

(cl:defmethod down-box ((self fl-button))
  (Fl_Button_down_box (ff-pointer self)))

(cl:defmethod down-box ((self fl-button) (b cl:integer))
  (Fl_Button_down_box (ff-pointer self) b))

(cl:defmethod shortcut ((self fl-button) (s cl:string))
  (Fl_Button_shortcut (ff-pointer self) s))

(cl:defmethod down-color ((self fl-button))
  (Fl_Button_down_color (ff-pointer self)))

(cl:defmethod down-color ((self fl-button) (c cl:integer))
  (Fl_Button_down_color (ff-pointer self) c))


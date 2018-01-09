if keyboard_check_pressed(vk_escape) and room_next(room) != -1
   {
   room_goto(room_next(room));
   }
   
   if keyboard_check_pressed(vk_escape) and room_next(room) = -1
   {
   room_goto(room0);
   }
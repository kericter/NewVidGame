/// scr_menu
switch (mpos) {
    case 0: {
        room_goto(rm_level_one);
        break;
    }
    case 1: {
        room_goto(rm_tutorial)
        break;
    }
    case 2: {
        game_end();
        break;
    }
    default: break;
}

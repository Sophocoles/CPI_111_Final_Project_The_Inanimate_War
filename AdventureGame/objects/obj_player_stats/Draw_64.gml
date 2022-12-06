/// @description Draw Stats
draw_set_font(fnt_game)
draw_text(32, 16, "HP: " + string(healthPoints) + "/" + string(maxHp))
draw_text(32, 32, "STAMINA: " + string(stamina) + "/" + string(maxStamina))
draw_text(32, 48, "ENERGY: " + string(energy) + "/" + string(maxEnergy))
draw_text(32, 64, "EXP: " + string(expr) + "/" + string(maxExpr))
draw_text(32, 80, "LEVEL: " + string(level))








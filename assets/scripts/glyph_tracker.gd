
@tool
extends RichTextLabel

# @onready var _ts := TextServerManager.get_primary_interface()


# var last_visible_character_bounds : Rect2 :
# 	get: return get_character_bounds(self.visible_characters)


# func get_character_bounds(idx: int) -> Rect2:
# 	if idx == -1: idx = self.text.length() - 1

# 	var text_server := TextServerManager.get_primary_interface()

# 	var paragraph := TextParagraph.new()
# 	paragraph.add_string(self.text, self.get_theme_default_font(), self.get_theme_default_font_size())
# 	paragraph.width = self.get_content_width()

# 	var x := 0.0
# 	var y := 0.0
# 	var ascent := 0.0
# 	var descent := 0.0

# 	var sizes := []

# 	for i in paragraph.get_line_count():
# 		x = 0.0

# 		ascent = paragraph.get_line_ascent(i)
# 		descent = paragraph.get_line_descent(i)

# 		# get the size of the line from the paragrah
# 		var line_size = paragraph.get_line_size(i)
# 		# # prepare the tight rect
# 		# var line_tight_rect = Rect2()
# 		# get the rid of the line
# 		var line_rid = paragraph.get_line_rid(self.get_character_line(i))
# 		# get all the glyphs that compose the line
# 		var glyphs = text_server.shaped_text_get_glyphs(line_rid)

# 		# for each glyph
# 		for glyph in glyphs:
# 			# Extract info about the glyph
# 			var glyph_font_rid = glyph.get('font_rid', RID())
# 			var glyph_font_size = Vector2i(glyph.get('font_size', 8), 0)
# 			var glyph_index = glyph.get('index', -1)
# 			var glyph_offset = text_server.font_get_glyph_offset(glyph_font_rid, glyph_font_size, glyph_index)
# 			var glyph_size = text_server.font_get_glyph_size(glyph_font_rid, glyph_font_size, glyph_index)
# 			sizes.push_back(glyph_size)
# 			# draw a red rect surrounding the glyph
# 			# var glyph_rect = Rect2(Vector2(x, y + ascent) + glyph_offset, glyph_size)
# 			# if glyph_rect.has_area():
# 			# 	draw_rect(glyph_rect, Color.RED, false)
# 			# 	if not line_tight_rect.has_area():
# 			# 		# initialize the tight rect with the first glyph rect if it's empty
# 			# 		line_tight_rect = glyph_rect
# 			# 	else:
# 			# 		# or merge the glyph rect
# 			# 		line_tight_rect = line_tight_rect.merge(glyph_rect)
# 			# get the advance (how much the we need to move x)
# 			var advance = glyph.get("advance", 0)
# 			# add the advance to x
# 			x += advance
# 		y += line_size.y

# 	return Rect2(Vector2(x, y), Vector2())

# 	# var line := paragraph.get_line_rid(0)
# 	# var shaped := line
# 	# var glyphs := _ts.shaped_text_get_glyphs(shaped)

# 	# print(glyphs)


# 	# var pos := _ts.shaped_text_get_grapheme_bounds(shaped, idx)
# 	# # var pos := _ts.shaped_text_get_line_breaks(

# 	# return Rect2(pos, Vector2())


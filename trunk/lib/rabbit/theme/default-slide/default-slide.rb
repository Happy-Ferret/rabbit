@default_headline_line_color ||= "#ff9933"

match(Slide) do |slides|
  slides.each do |slide|
    slide.margin_set(@margin_top, @margin_right, @margin_bottom, @margin_left)
    slide.headline.hide if slide.hide_title?
  end
end

match(Slide, HeadLine) do
  name = "head-line"
  
  delete_post_draw_proc_by_name(name)

  space = @space / 2.0
  margin_with(:bottom => space * 3)
  add_post_draw_proc(name) do |text, canvas, x, y, w, h, simulation|
    unless simulation
      canvas.draw_line(x, y + space, x + w, y + space,
                       @default_headline_line_color)
    end
    [x, y, w, h]
  end
end

match(Slide, Body) do |bodies|
  bodies.each do |body|
    unless body.elements.any? {|element| element.is_a?(Image)}
      body.margin_with(:left => @body_margin_left,
                       :right => @body_margin_right)
    end
  end
end
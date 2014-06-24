class HTMLGenerator
  def initialize(tags="")
    @tags = tags.split('CONTENT')
  end

  def wrapper(output)
    final = @tags[0].to_s + output + @tags[1].to_s
    final
  end

  def section(text)
    string = '<section>' + text + '</section>'
    wrapper(string)
  end

  def unordered_list(list_items)
    string = '<ul>'
    list_items.each do |item|
      string += '<li>' + item + '</li>'
    end
    string += '</ul>'
    wrapper(string)
  end

  def button(button_text, type="default")
    if type == {:class => "flashy_class"}
      string = "<button class='flashy_class'>" + button_text + "</button>"
      wrapper(string)
    else
      string = "<button>" + button_text + "</button>"
      wrapper(string)
    end

  end



end


  ... 
  def self.tableize_code (str, lang = '')
    #table = '<div class="highlight"><table><tr>'
    #code = ''
    #str.lines.each_with_index do |line|
    #  #table += "<span class='line-number'>#{index+1}</span>\n"
    #  code  += "<span class='line'>#{line}</span>"
    #end
    #table += "<td class='code'><pre><code class='#{lang}'>#{code}</code></pre></td></tr></table></div>"
    table = '<div class="highlight"><table><tr><td class="gutter"><pre class="line-numbers">'
    code = ''
    str.lines.each_with_index do |line,index|
      table += "<span class='line-number'>#{index+1}</span>\n"
      code  += "<span class='line'>#{line}</span>"
    end
    table += "</pre></td><td class='code'><pre><code class='#{lang}'>#{code}</code></pre></td></tr></table></div>"
  end
  ...

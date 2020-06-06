Dir.chdir(code_path) do
  code = file.read
  @filetype = file.extname.sub('.','') if @filetype.nil?
  title = @title ? "#{@title} (#{file.basename})" : file.basename
  url = "/#{code_dir}/#{@file}"
  #source = "<figure class='code'><figcaption><span>#{title}</span> <a href='#{url}'>download</a></figcaption>\n"
  source = "<figure class='code'><figcaption> <a href='#{url}' target='_blank'>download</a></figcaption>\n"
  source += "#{HighlightCode::highlight(code, @filetype)}</figure>"
  TemplateWrapper::safe_wrap(source)
end

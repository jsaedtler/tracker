module ScriptsHelper
  def render_script script
    script.content.html_safe
  end
end

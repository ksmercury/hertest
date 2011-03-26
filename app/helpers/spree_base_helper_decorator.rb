Spree::BaseHelper.module_eval do
  def stylesheet_tags(paths=stylesheet_paths)
    paths.blank? ? '' : stylesheet_link_tag(paths)
  end
end

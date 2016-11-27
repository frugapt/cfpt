class LocalController < ContentController
  layout :theme_layout

  def frontpage
    @frontpage = true
    @articles = Article.already_published.limit(this_blog.limit_article_display)
    @page_title = 'matijs.net'
  end
end

Rails.application.routes.draw do
  mount StaticErrorPages::Engine => "/static_error_pages"
end

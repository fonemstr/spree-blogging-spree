Deface::Override.new(
  virtual_path: 'spree/layouts/admin',
  name: 'blog_admin_sidebar_menu',
  insert_bottom: '#main-sidebar',
  partial: 'spree/admin/shared/blog_sidebar_menu'
)

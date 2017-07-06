Rails.application.routes.draw do
  get 'book/list'
   get 'book/new'
   post 'book/create'
   patch 'book/update'
   get 'book/list'
   get 'book/show'
   post 'book/edit'
   get 'book/delete'
   get 'book/update'
   get 'book/show_subjects'
   get 'test/another'
end

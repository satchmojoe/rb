Rails.application.routes.draw do
  get 'forms/:form_id/entries' => 'form_values#index'

  get 'forms/:form_id/entry/:entry_id' => 'form_values#show'

  put 'forms/:form_id/entry/:entry_id' => 'form_values#update'

  post 'forms/:form_id/entry' => 'form_values#create'

  delete 'form_values/delete'

  put 'forms/:id' => 'forms#update'

  get 'forms/:id' => 'forms#show', defaults: {format: :json}

  get 'forms/index', defaults: {format: :json}

  post 'forms' => 'forms#create'

  delete 'forms/delete'
end

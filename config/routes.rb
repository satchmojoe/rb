Rails.application.routes.draw do
  get 'forms/:form_id/count/' => 'form_values#count_with_matching_filters'

  get 'forms/:form_id/entries' => 'form_values#index'

  get 'forms/:form_id/entry/:entry_id' => 'form_values#show'

  put 'forms/:form_id/entry/:entry_id' => 'form_values#update'

  post 'forms/:form_id/entry' => 'form_values#create'

  delete 'forms/:form_id/entry/:entry_id' => 'form_values#delete'

  get 'forms/index', defaults: {format: :json}

  put 'forms/:id' => 'forms#update'

  get 'forms/:id' => 'forms#show', defaults: {format: :json}

  post 'forms' => 'forms#create'

  delete 'forms/:form_id' => 'forms#delete'

end

Rails.application.routes.draw do

  resources :gardens do
    resources :plants, only: [ :create ]
  end

  # COOL NEW FACT - EMPTY RESOURCES
  resources :plants, only: [] do
    # As we only need plant_id when creating new plant_tag, we only nest those
    resources :plant_tags, only: [ :new, :create ]
  end
end

#### Rails CRUD

######
! delete not works well may due to rails 7

1. routes.rb
```
get '/path', to: 'controller#action'
get 'restaurants/:id', to: 'restaurants#show'
```
2. 
```_controller.rb

def action
end
```
3.
```
action.html.erb
```
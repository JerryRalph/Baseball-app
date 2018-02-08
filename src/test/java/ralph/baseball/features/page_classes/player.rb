require 'page-object'

class Player

  include PageObject

  page_url "http://localhost:8080/baseball/"

  unordered_list(:response, :id => 'horizontal-list')
  link(:delete, :id => 'delete')
  link(:stats, :id => 'stats')
  link(:detail, :id => 'detail')
  link(:edit, :id => 'edit')
  link(:schedule, :id => 'schedule')


end
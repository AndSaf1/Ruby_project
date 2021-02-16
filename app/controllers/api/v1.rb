class Api::V1 < Grape::API
  format :json
  content_type :json, 'application/json; charset=utf-8'

  version 'v1'

  mount CitiesAPI
end
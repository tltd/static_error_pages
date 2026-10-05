StaticErrorPages::Engine.routes.draw do
  get ":code" => "error#show", constraints: { code: /#{StaticErrorPages.supported_errors.join('|')}/ }
end


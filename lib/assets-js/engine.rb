module AssetsJs
  class Engine < ::Rails::Engine
    initializer 'asset-js.load_static_assets' do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/app"
    end
  end
end

class ManifestsController < ApplicationController
  def index
    filename = File.join(Rails.root, '/public/assets/manifest.yml')

    if File.exists?(filename)
      render json: YAML.load(File.read(filename)).to_json
    else
      render json: {}
    end
  end
end

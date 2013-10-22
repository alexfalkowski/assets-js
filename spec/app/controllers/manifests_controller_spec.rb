require 'spec_helper'

describe ManifestsController, type: :controller do
  context 'existent manifest' do
    Given(:manifest) {
      '---
      37892529.jpg: 37892529-4daf1ef033944e9447ef3650e39fa44d.jpg
      37892529/index.jpg: 37892529-4daf1ef033944e9447ef3650e39fa44d.jpg
      application.js: application-6ab4e9dcae209facb3e5e1e06f115060.js
      application/index.js: application-6ab4e9dcae209facb3e5e1e06f115060.js
      application.css: application-49569f06d520d7517b1aacdecf390fb4.css
      application/index.css: application-49569f06d520d7517b1aacdecf390fb4.css
      jquery.min.map: jquery.min-76ccc69abae59959fd62ed6d8207e10e.map
      jquery/index.min.map: jquery.min-76ccc69abae59959fd62ed6d8207e10e.map'
    }
    Given(:manifest_json) {
      "{\"37892529.jpg\":\"37892529-4daf1ef033944e9447ef3650e39fa44d.jpg\",\"37892529/index.jpg\":\"37892529-4daf1ef033944e9447ef3650e39fa44d.jpg\",\"application.js\":\"application-6ab4e9dcae209facb3e5e1e06f115060.js\",\"application/index.js\":\"application-6ab4e9dcae209facb3e5e1e06f115060.js\",\"application.css\":\"application-49569f06d520d7517b1aacdecf390fb4.css\",\"application/index.css\":\"application-49569f06d520d7517b1aacdecf390fb4.css\",\"jquery.min.map\":\"jquery.min-76ccc69abae59959fd62ed6d8207e10e.map\",\"jquery/index.min.map\":\"jquery.min-76ccc69abae59959fd62ed6d8207e10e.map\"}"
    }
    Given { allow(File).to receive(:join).with(any_args()).and_return('/path/to/manifest.yml') }
    Given { allow(File).to receive(:exists?).with('/path/to/manifest.yml').and_return(true) }
    Given { allow(File).to receive(:read).with('/path/to/manifest.yml').and_return(manifest) }
    When { get :index }
    Then { response.body == manifest_json }
  end

  context 'non existent manifest' do
    Given { allow(File).to receive(:join).with(any_args()).and_return('/path/to/manifest.yml') }
    Given { allow(File).to receive(:exists?).with('/path/to/manifest.yml').and_return(false) }
    Given { allow(File).to receive(:read).with('/path/to/manifest.yml').and_throw(RuntimeError) }
    When { get :index }
    Then { response.body == '{}' }
  end
end

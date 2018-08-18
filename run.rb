require "google/cloud/vision"
require 'dotenv/load'

gcv = Google::Cloud::Vision.new(project_id: 'for-gcv')
file = File.expand_path('../img/github.png', __FILE__)
res = gcv.image(file).annotate.text.text.chomp

p res

class Default < Thor
  include Thor::Actions
  Thor::Sandbox::Default.source_root(File.expand_path('..', __FILE__))

  desc "generate", "Generate Sinatra app from routes.csv"
  def generate
    %x(bundle exec ruby generator.rb)
  end
end

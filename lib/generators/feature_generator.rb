class FeatureGenerator < Rails::Generators::NamedBase
  class_option :language, type: :string, default: 'en'
  class_option :folder, type: :string

  desc "This generator creates a .feature file in /features and the _steps.rb file in /features/step_definitions for a feature in cucumber based on the name of the feature"
  gem 'cucumber-rails', group: "test"
  def create_feature_file
    template = "Feature: "
    if options['language'] == 'pt'
      template = "Funcionalidade: "
    end
    if options['folder']
      create_file "features/#{options['folder']}/#{file_name}.feature", "#language: #{options['language']}\n#encoding: utf-8\n\n#{template}#{file_name}"
    else
      create_file "features/#{file_name}.feature", "#language: #{options['language']}\n#encoding: utf-8\n\n#{template}#{file_name}"
    end
  end

  def create_feature_steps_file
    if options['folder']
      create_file "features/step_definitions/#{options['folder']}/#{file_name}_steps.rb","# This is the steps file referred to #{file_name} feature\n# Place your code relative to that feature here"
    else
      create_file "features/step_definitions/#{file_name}_steps.rb","# This is the steps file referred to #{file_name} feature\n# Place your code relative to that feature here"
    end
  end
end
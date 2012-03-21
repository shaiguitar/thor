# module: random

class FilterTaskArgScript < Thor
  
  default_task :output_symbol
  
  desc "output_symbol NAME", "say 'name' in lower case"
  method_option :baz, :type => :string, :alias => %w(-b), 
    :filter => lambda {|arg| arg.downcase.to_sym }
  method_option :num, :type => :numeric
  method_option :bool, :type => :boolean, :alias => %w(-t)
  def output_symbol
    puts options["baz"]
    options["baz"]
  end
end

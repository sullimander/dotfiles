# based on @jerodsanto irb settings
# https://github.com/jerodsanto/dotfiles/blob/8ced1bda82c0ffb302013432f7e92157176a5cc7/irbrc

require "rubygems"

begin
  require "awesome_print"

  IRB::Irb.class_eval do
    def output_value
      ap @context.last_value
    end
  end
rescue LoadError
  puts "*** awesome_print disabled ***"
  require "pp"
end

begin
  require "interactive_editor"
rescue LoadError
  puts "*** interactive_editor disabled ***"
end

# quick benchmarking
# based on rue's irbrc => http://pastie.org/179534
def bm(repetitions=100, &block)
  require "benchmark"

  Benchmark.bmbm do |b|
    b.report {repetitions.times &block}
  end
  nil
end

begin
  require "pry"
  Pry.start
  exit
rescue LoadError
  puts "*** pry disabled ***"
end

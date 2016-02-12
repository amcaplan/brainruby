require 'erb'
require 'set'
require 'fileutils'

def dollars_for(num)
  (['$$/$$'] * num).join('+')
end

@program = %{ruby -e "#{File.read(ARGV[0])}"}.each_char.map { |char|
  dollars_for(char.ord)
}.join('<<')

out = ARGV[1]
FileUtils.touch(out) unless File.exist?(out)
File.write(out, ERB.new(File.read('./template.rb')).result(binding))

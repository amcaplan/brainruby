require 'erb'
require 'set'
require 'fileutils'

def dollars_for(num)
  (['$$/$$'] * num).join('+')
end

def dollarify(string)
  string.each_char.map { |char|
    dollars_for(char.ord)
  }
end

def dollarify_escaping_quotes(string)
  string.each_char.map { |char|
    if char == '"'
      dollars_for('\\'.ord) + '<<' + dollars_for(char.ord)
    else
      dollars_for(char.ord)
    end
  }
end

@program = (
  dollarify('ruby -e "') +
  dollarify_escaping_quotes(File.read(ARGV[0])) +
  dollarify('"')
).join('<<')

out = ARGV[1]
FileUtils.touch(out) unless File.exist?(out)
File.write(out, ERB.new(File.read('./template.rb')).result(binding))

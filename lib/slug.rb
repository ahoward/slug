begin
  require 'rubygems'
rescue LoadError
end

begin
  require 'unidecode'
rescue LoadError
end

class Slug < ::String
  Slug::Version = '0.0.1'

  def Slug.version
    '0.0.1'
  end

  Join = '-'

  def Slug.for(*args)
    string = args.flatten.compact.join(Join)
    string = unidecode(string)
    words = string.to_s.scan(%r/\w+/)
    words.map!{|word| word.gsub %r/[^0-9a-zA-Z_-]/, ''}
    words.delete_if{|word| word.nil? or word.strip.empty?}
    new(words.join(Join).downcase)
  end

  unless defined?(Unidecoder)
    def Slug.unidecode(string)
      string
    end
  else
    def Slug.unidecode(string)
      Unidecoder.decode(string)
    end
  end
end

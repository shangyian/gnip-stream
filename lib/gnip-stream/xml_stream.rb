module GnipStream
  class XmlStream
    include StreamDelegate
    def initialize(url, headers={})
      xml_processor = DataBuffer.new(Regexp.new(/^(\<entry.*?\<\/entry\>)(.*)/m))
      @stream = Stream.new(url, xml_processor, headers)
    end
  end
end

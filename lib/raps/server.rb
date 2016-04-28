require 'mimemagic'

module Raps
  class Server
    def self.call(env)
      root = Rails.root.join('public')
      path = Rack::Utils.unescape(env['PATH_INFO'])
      file = root.to_s + path

      status = 404
      headers = { 'Content-Type' => 'text/plain' }
      content = nil

      if File.exist?(file)
        status = 200
        mime = MimeMagic.by_path(file)
        headers = { 'Content-Type' => mime ? mime.type : 'application/octet-stream' }
        content = mime && mime.mediatype == 'text' ? File.read(file) : File.binread(file)
      else
        content = "file not found #{file}"
      end

      [ status, headers, [content] ]
    end
  end
end

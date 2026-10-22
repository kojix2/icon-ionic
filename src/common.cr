# Generated from ionic-team/ionicons (MIT). Do not edit manually.
require "base64"
require "crimage"

module Icon
  module Ionic
    # Shared CrImage images. Copy before modifying.
    private def self.decode_png(encoded : String)
      CrImage.read(IO::Memory.new(Base64.decode(encoded)))
    end
  end
end

class BlackSea < Formula
  desc "Black Sea — terminal multiplayer sailing game"
  homepage "https://github.com/dtennander/black-sea"
  version "1.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dtennander/black-sea/releases/download/v1.3.1/black-sea-client-macos-aarch64"
      sha256 "099f60b05cacf98cb24c3b1d39fe912ed782409bbe760ae0401a02fc50d66f98"
    else
      url "https://github.com/dtennander/black-sea/releases/download/v1.3.1/black-sea-client-macos-x86_64"
      sha256 "80b7a6e4080f6690d6ae2cd3f6489db74defb09b1b0dc812cf1c599bc573d171"
    end
  end

  on_linux do
    url "https://github.com/dtennander/black-sea/releases/download/v1.3.1/black-sea-client-linux"
    sha256 "af016a9c1dfb0d62ac6167134d3a9f43f6f9c9118bfd3de3bd2a239eba582cae"
  end

  def install
    bin_name = if OS.mac?
      Hardware::CPU.arm? ? "black-sea-client-macos-aarch64" : "black-sea-client-macos-x86_64"
    else
      "black-sea-client-linux"
    end
    bin.install bin_name => "black-sea"
  end
end

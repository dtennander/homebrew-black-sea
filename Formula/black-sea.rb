class BlackSea < Formula
  desc "Black Sea — terminal multiplayer sailing game"
  homepage "https://github.com/dtennander/black-sea"
  version "1.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dtennander/black-sea/releases/download/v1.1.2/black-sea-client-macos-aarch64"
      sha256 "b0ee9c71311f4826dc04882a71ef04748b12961e4c792d98b6f5c4599002b063"
    else
      url "https://github.com/dtennander/black-sea/releases/download/v1.1.2/black-sea-client-macos-x86_64"
      sha256 "553db461b243824c3d8dce8d7b8464889b77c82fa094f8f0d4ddc6d4ca933acb"
    end
  end

  on_linux do
    url "https://github.com/dtennander/black-sea/releases/download/v1.1.2/black-sea-client-linux"
    sha256 "6a747b16c6cd0e02407905251399ddd9b3196136fa6d4821cc08554d99b3e703"
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

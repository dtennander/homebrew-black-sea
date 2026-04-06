class BlackSea < Formula
  desc "Black Sea — terminal multiplayer sailing game"
  homepage "https://github.com/dtennander/black-sea"
  version "1.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dtennander/black-sea/releases/download/v1.1.1/black-sea-client-macos-aarch64"
      sha256 "f71e8150091223d44cdf3ce8e873a36e693926f62ed1cb7f2e3fa3503e937555"
    else
      url "https://github.com/dtennander/black-sea/releases/download/v1.1.1/black-sea-client-macos-x86_64"
      sha256 "154c83bfda829d55fc2644bc15dfcce91ff620bf3465399c563ec3ad11a404af"
    end
  end

  on_linux do
    url "https://github.com/dtennander/black-sea/releases/download/v1.1.1/black-sea-client-linux"
    sha256 "77864b08d2ad68c2004acb8f9f10716daf7642ec9527c7317932786bb09793ad"
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

class BlackSea < Formula
  desc "Black Sea — terminal multiplayer sailing game"
  homepage "https://github.com/dtennander/black-sea"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dtennander/black-sea/releases/download/v1.2.0/black-sea-client-macos-aarch64"
      sha256 "2306264b11136a5e652822edbcdb982a421fbf3fd78e6dd23ec2a120f577e0c5"
    else
      url "https://github.com/dtennander/black-sea/releases/download/v1.2.0/black-sea-client-macos-x86_64"
      sha256 "4d208e433bf1c1bf4556f45d5005362d50ae0d80b69f0d0b1db061fae33b953f"
    end
  end

  on_linux do
    url "https://github.com/dtennander/black-sea/releases/download/v1.2.0/black-sea-client-linux"
    sha256 "9c40c09b60656c08d01fbdf9ea622adecb2550ef2994c1cec0187f474ec552e8"
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

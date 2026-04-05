class BlackSea < Formula
  desc "Black Sea — terminal multiplayer sailing game"
  homepage "https://github.com/dtennander/black-sea"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dtennander/black-sea/releases/download/v1.0.0/black-sea-client-macos-aarch64"
      sha256 "a52ea582a81930494a091c53a33c3001865e5a19acc2f6b7385fda5bae1f10a3"
    else
      url "https://github.com/dtennander/black-sea/releases/download/v1.0.0/black-sea-client-macos-x86_64"
      sha256 "e15a1a1f8c2a615004e65823f7ac5437da14a9bb5d9f417f114218a7a880721d"
    end
  end

  on_linux do
    url "https://github.com/dtennander/black-sea/releases/download/v1.0.0/black-sea-client-linux"
    sha256 "35513b761ad1c00d591c5e0c32799df39ef219c67cb912b4aa49978dc011a8dd"
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

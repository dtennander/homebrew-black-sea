class BlackSea < Formula
  desc "Black Sea — terminal multiplayer sailing game"
  homepage "https://github.com/dtennander/black-sea"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dtennander/black-sea/releases/download/v1.3.0/black-sea-client-macos-aarch64"
      sha256 "cbd23cf672e029ee97d527cccc75b4cbe714af0452809879abba757ea2e22008"
    else
      url "https://github.com/dtennander/black-sea/releases/download/v1.3.0/black-sea-client-macos-x86_64"
      sha256 "5c3182006a982adb57844165aa2482475cb1b33c6ec6e126812ef5b28c84e2e1"
    end
  end

  on_linux do
    url "https://github.com/dtennander/black-sea/releases/download/v1.3.0/black-sea-client-linux"
    sha256 "d1036803e0528af0950f6b6a86a6a324a2e70ef34c99c88572d098ad09977760"
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

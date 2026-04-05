class BlackSea < Formula
  desc "Black Sea — terminal multiplayer sailing game"
  homepage "https://github.com/dtennander/black-sea"
  version "1.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dtennander/black-sea/releases/download/v1.0.2/black-sea-client-macos-aarch64"
      sha256 "867df99fddc5a706d74f887aeb20ba7819cc27f7ed4a99074e09d89d2e94ead0"
    else
      url "https://github.com/dtennander/black-sea/releases/download/v1.0.2/black-sea-client-macos-x86_64"
      sha256 "0b2949837ad026ba0a28b0d812e2a665c3482248b71f33cef90d420a3aab5441"
    end
  end

  on_linux do
    url "https://github.com/dtennander/black-sea/releases/download/v1.0.2/black-sea-client-linux"
    sha256 "3888103f453c2493b8feec7aee62eb06609fc44b91b13e2545e0b32df1b496c4"
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

class BlackSea < Formula
  desc "Black Sea — terminal multiplayer sailing game"
  homepage "https://github.com/dtennander/black-sea"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dtennander/black-sea/releases/download/v1.1.0/black-sea-client-macos-aarch64"
      sha256 "ce9fb394bcb9f456a8d8fba63ee707342cc71fe7e7a995868bcc22e538646ff8"
    else
      url "https://github.com/dtennander/black-sea/releases/download/v1.1.0/black-sea-client-macos-x86_64"
      sha256 "4a7dce23edff2b54e876061d0ba7cdfc58c0df592367ed324b9e5933183da656"
    end
  end

  on_linux do
    url "https://github.com/dtennander/black-sea/releases/download/v1.1.0/black-sea-client-linux"
    sha256 "0dc5660d3381872d63b8573ed4ece5024ad165008734a58de65bf93ac6e89d67"
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

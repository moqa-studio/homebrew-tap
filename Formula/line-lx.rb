class LineLx < Formula
  desc "Put your company's agent plugins on this machine"
  homepage "https://github.com/moqa-studio/line-lx-cli"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/moqa-studio/line-lx-cli/releases/download/v0.1.2/line-lx_0.1.2_darwin_arm64.tar.gz"
      sha256 "01d910aabbb618a87b4993c963b5bbcd1abab2ff61b975d354d9f10f339230f4"
    end
    on_intel do
      url "https://github.com/moqa-studio/line-lx-cli/releases/download/v0.1.2/line-lx_0.1.2_darwin_amd64.tar.gz"
      sha256 "15b404420ae3ff6df4ba8c2e51e31af84aa6e0908056b8bd2c1f4003c9493fb4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/moqa-studio/line-lx-cli/releases/download/v0.1.2/line-lx_0.1.2_linux_arm64.tar.gz"
      sha256 "906b29f5fa53ef1f08070634f23eb5ba3e41d02a58c52fdee54b8dd2c8dc43f8"
    end
    on_intel do
      url "https://github.com/moqa-studio/line-lx-cli/releases/download/v0.1.2/line-lx_0.1.2_linux_amd64.tar.gz"
      sha256 "1a5378a18ecca2a3b4bc2d04083c4b280e4b066aacf40178ab44fa6dec256994"
    end
  end

  def install
    bin.install "line-lx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/line-lx --version")
  end
end

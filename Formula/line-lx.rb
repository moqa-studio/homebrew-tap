class LineLx < Formula
  desc "Put your company's agent plugins on this machine"
  homepage "https://github.com/moqa-studio/line-lx-cli"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/moqa-studio/line-lx-cli/releases/download/v0.4.0/line-lx_0.4.0_darwin_arm64.tar.gz"
      sha256 "57c4e4fd9fd0ee9199aee09cf2750a5fb1270654bb55b0c111926d6d78958f0d"
    end
    on_intel do
      url "https://github.com/moqa-studio/line-lx-cli/releases/download/v0.4.0/line-lx_0.4.0_darwin_amd64.tar.gz"
      sha256 "e0b9cd0ebc3718c08de28000a846653514feead7390348f67cf92a74509e6141"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/moqa-studio/line-lx-cli/releases/download/v0.4.0/line-lx_0.4.0_linux_arm64.tar.gz"
      sha256 "ac2e05f2830df284327b6b9db2f8ebbd0cfb02caa87476b5adf4b2a068d84e5a"
    end
    on_intel do
      url "https://github.com/moqa-studio/line-lx-cli/releases/download/v0.4.0/line-lx_0.4.0_linux_amd64.tar.gz"
      sha256 "e4d731faf1ce572488f894a4f1dcdaed6f5ea4f03afadcbccc005e5e476d49c3"
    end
  end

  def install
    bin.install "line-lx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/line-lx --version")
  end
end

class LineLx < Formula
  desc "Put your company's agent plugins on this machine"
  homepage "https://github.com/moqa-studio/line-lx-cli"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/moqa-studio/line-lx-cli/releases/download/v0.1.1/line-lx_0.1.1_darwin_arm64.tar.gz"
      sha256 "e68a7a79e3de81ca02403bc3ff1e126235954b617cf627c60a78b09c3461e314"
    end
    on_intel do
      url "https://github.com/moqa-studio/line-lx-cli/releases/download/v0.1.1/line-lx_0.1.1_darwin_amd64.tar.gz"
      sha256 "243e6f3a793a328fb3bed87d7fb9189090e9b182cf1f119241ac9ee38f27fbff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/moqa-studio/line-lx-cli/releases/download/v0.1.1/line-lx_0.1.1_linux_arm64.tar.gz"
      sha256 "b0e19988f4166028d048f8137e8f8624353af0d4c579a2a6959a5d8eab494d54"
    end
    on_intel do
      url "https://github.com/moqa-studio/line-lx-cli/releases/download/v0.1.1/line-lx_0.1.1_linux_amd64.tar.gz"
      sha256 "e07526fa922b21293a603abcac846e368f7f7b15890a6f495d2e9aeb93480820"
    end
  end

  def install
    bin.install "line-lx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/line-lx --version")
  end
end

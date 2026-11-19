class LineLx < Formula
  desc "Put your company's agent plugins on this machine"
  homepage "https://github.com/moqa-studio/line-lx-cli"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/moqa-studio/line-lx-cli/releases/download/v0.2.0/line-lx_0.2.0_darwin_arm64.tar.gz"
      sha256 "f94b43afc13f7e072738c7f9b84b1842606b0a3a3599e11cf079e470049c9261"
    end
    on_intel do
      url "https://github.com/moqa-studio/line-lx-cli/releases/download/v0.2.0/line-lx_0.2.0_darwin_amd64.tar.gz"
      sha256 "9c53e77bf99c6630bdde0fd1213180c4a2b5106f7f0db7f42a3651d3dd564d81"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/moqa-studio/line-lx-cli/releases/download/v0.2.0/line-lx_0.2.0_linux_arm64.tar.gz"
      sha256 "2b4f79a8c9218deeb6ed1906bf0de9fbf6aa3d5829b93b364bcf06cf091fc922"
    end
    on_intel do
      url "https://github.com/moqa-studio/line-lx-cli/releases/download/v0.2.0/line-lx_0.2.0_linux_amd64.tar.gz"
      sha256 "c6c6cd74a000f0119ad0f528fcb0d2a96c50d4903e62cec0845ccd9b44b9b1fc"
    end
  end

  def install
    bin.install "line-lx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/line-lx --version")
  end
end

class LineLx < Formula
  desc "Put your company's agent plugins on this machine"
  homepage "https://github.com/moqa-studio/line-lx-cli"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/moqa-studio/line-lx-cli/releases/download/v0.3.0/line-lx_0.3.0_darwin_arm64.tar.gz"
      sha256 "b3f09eaa4b5a8c8ac63bbb0ee627b0407876e836b6856f28438519fc4d09d6ca"
    end
    on_intel do
      url "https://github.com/moqa-studio/line-lx-cli/releases/download/v0.3.0/line-lx_0.3.0_darwin_amd64.tar.gz"
      sha256 "ea8d2b15394070ee53cc018b14a8ab350a8cb6880b57ced9228041b01917c7e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/moqa-studio/line-lx-cli/releases/download/v0.3.0/line-lx_0.3.0_linux_arm64.tar.gz"
      sha256 "f42c537f915d2fca6f948247d6b89ef77241687e7a0350c9c4ca188bebd6e2f0"
    end
    on_intel do
      url "https://github.com/moqa-studio/line-lx-cli/releases/download/v0.3.0/line-lx_0.3.0_linux_amd64.tar.gz"
      sha256 "e78738aa2553f798972463956fe768b7d46c424eae12445ca615f072114d7322"
    end
  end

  def install
    bin.install "line-lx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/line-lx --version")
  end
end

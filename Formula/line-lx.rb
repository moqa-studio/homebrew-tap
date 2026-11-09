class LineLx < Formula
  desc "Put your company's agent plugins on this machine"
  homepage "https://github.com/moqa-studio/line-lx-cli"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/moqa-studio/line-lx-cli/releases/download/v0.1.0/line-lx_0.1.0_darwin_arm64.tar.gz"
      sha256 "a5c645f8e7b49902d32e0ee7dc2133a2036b34d1e29af19bd3e0c7d76b5497bd"
    end
    on_intel do
      url "https://github.com/moqa-studio/line-lx-cli/releases/download/v0.1.0/line-lx_0.1.0_darwin_amd64.tar.gz"
      sha256 "1480aa10a6ec221626a15138af96739902e243d21b6fad77727edca26a0a3728"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/moqa-studio/line-lx-cli/releases/download/v0.1.0/line-lx_0.1.0_linux_arm64.tar.gz"
      sha256 "b60405fc33cdb4d8982a64a473a72b2b4d34e1f7e74770135ba85ae833cb5005"
    end
    on_intel do
      url "https://github.com/moqa-studio/line-lx-cli/releases/download/v0.1.0/line-lx_0.1.0_linux_amd64.tar.gz"
      sha256 "261d6b4fb7c8ae989ac95e1f56f6ade83c1d0e432bfc66bed5875dd9c8eab30b"
    end
  end

  def install
    bin.install "line-lx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/line-lx --version")
  end
end

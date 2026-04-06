class AgentsCli < Formula
  desc "AI agents CLI tool"
  homepage "https://github.com/moqa-studio/agents-cli"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/moqa-studio/agents-cli/releases/download/v0.1.0/ags-darwin-arm64"
      sha256 "fac4ca92db4239b1efb2a354ef9fd0ddafd74a907fcfeeedd5e25e92c3f10787"

      def install
        bin.install "ags-darwin-arm64" => "ags"
      end
    else
      url "https://github.com/moqa-studio/agents-cli/releases/download/v0.1.0/ags-darwin-x64"
      sha256 "78ce9c5cd1b0de1ab9eb58598842b87c0e1dd08f3c40d867e5a9c6fc09c306d8"

      def install
        bin.install "ags-darwin-x64" => "ags"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/moqa-studio/agents-cli/releases/download/v0.1.0/ags-linux-x64"
      sha256 "4aa94150b5ffa4387800a51d78a011e7643fe32e7ca8590b3281afce2a9f0612"

      def install
        bin.install "ags-linux-x64" => "ags"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ags --version")
  end
end

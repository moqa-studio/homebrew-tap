class AgentsCli < Formula
  desc "AI agents CLI tool"
  homepage "https://github.com/moqa-studio/agents-cli"
  license "MIT"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/moqa-studio/agents-cli/releases/download/v0.1.1/ags-darwin-arm64"
      sha256 "026281e504ce30c38bf0c5dcc9fcba2e542b9df21c6136942c09fac55ec6eb9c"

      def install
        bin.install "ags-darwin-arm64" => "ags"
      end
    else
      url "https://github.com/moqa-studio/agents-cli/releases/download/v0.1.1/ags-darwin-x64"
      sha256 "8e41761c4b9052ff306e6f47e4f6be90559ca428fc796bc843fcc46cdbe07f8f"

      def install
        bin.install "ags-darwin-x64" => "ags"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/moqa-studio/agents-cli/releases/download/v0.1.1/ags-linux-x64"
      sha256 "4f4a833f1b433ae048ee05ea43ac3a0f7b5bd2367023bb8ab7a011ab624b0cc2"

      def install
        bin.install "ags-linux-x64" => "ags"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ags --version")
  end
end

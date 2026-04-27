class Krateoctl < Formula
  desc "Krateo PlatformOps CLI"
  homepage "https://github.com/krateoplatformops/krateoctl/"
  version "1.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/krateoplatformops/krateoctl/releases/download/v1.2.1/krateoctl_1.2.1_darwin_arm64.tar.gz"
      sha256 "da31de5a1800e25307553dafbe2c0713954e94beef44db045386f0d32bdaa996"

      def install
        bin.install "krateoctl"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/krateoplatformops/krateoctl/releases/download/v1.2.1/krateoctl_1.2.1_darwin_amd64.tar.gz"
      sha256 "16b60bdcf9b902a0446c58d14871dcef67d7de7dd748b5a7eb7d2b1eaa8db2a9"

      def install
        bin.install "krateoctl"
      end
    end

  end

  def caveats
    <<~EOS
        * https://docs.krateo.io/
    EOS
  end
end
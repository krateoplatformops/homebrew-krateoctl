class Krateoctl < Formula
  desc "Krateo PlatformOps CLI"
  homepage "https://github.com/krateoplatformops/krateoctl/"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/krateoplatformops/krateoctl/releases/download/v1.1.0/krateoctl_1.1.0_darwin_arm64.tar.gz"
      sha256 "9c83e41fd8365f1d217894b758f2977b1c12964bf8184c3c8e87c024b0db77d5"

      def install
        bin.install "krateoctl"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/krateoplatformops/krateoctl/releases/download/v1.1.0/krateoctl_1.1.0_darwin_amd64.tar.gz"
      sha256 "a65f39f530f34323369d51384c2fa3e94c586f0af66061979a6b33dbf0eb4a96"

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
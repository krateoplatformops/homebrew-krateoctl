class Krateoctl < Formula
  desc "Krateo PlatformOps CLI"
  homepage "https://github.com/krateoplatformops/krateoctl/"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/krateoplatformops/krateoctl/releases/download/v1.2.0/krateoctl_1.2.0_darwin_arm64.tar.gz"
      sha256 "0966d742aed83920b49145569f0e3297e70d0ae9bce28b88c3b2d9ac141d64ad"

      def install
        bin.install "krateoctl"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/krateoplatformops/krateoctl/releases/download/v1.2.0/krateoctl_1.2.0_darwin_amd64.tar.gz"
      sha256 "02d03ed124f8fc2f36c798a0d8f4f9043ab181708ea69d66342445cdfdf0c6ce"

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
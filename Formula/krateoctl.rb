class Krateoctl < Formula
  desc "Krateo PlatformOps CLI"
  homepage "https://github.com/krateoplatformops/krateoctl/"
  version "1.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/krateoplatformops/krateoctl/releases/download/v1.1.2/krateoctl_1.1.2_darwin_arm64.tar.gz"
      sha256 "92be26d7719810b761e86303c6d11d553cf19b2b9bc0b0ce04e8d04689cdf4a6"

      def install
        bin.install "krateoctl"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/krateoplatformops/krateoctl/releases/download/v1.1.2/krateoctl_1.1.2_darwin_amd64.tar.gz"
      sha256 "f39754cc4b99f7066612cce0d9c5f9ad576cde441787e2f66dbe2da44669c23a"

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
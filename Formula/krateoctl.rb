class Krateoctl < Formula
  desc "Krateo PlatformOps CLI"
  homepage "https://github.com/krateoplatformops/krateoctl/"
  version "0.8.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/krateoplatformops/krateoctl/releases/download/v0.8.11/krateoctl_0.8.11_darwin_arm64.tar.gz"
      sha256 "cdb652fb985101b9b5a668082aa9a36abff5bcb355004187a7499390a20254d6"

      def install
        bin.install "krateoctl"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/krateoplatformops/krateoctl/releases/download/v0.8.11/krateoctl_0.8.11_darwin_amd64.tar.gz"
      sha256 "0a316993b841b10995e0e75550ed4971324a4f606fda4e8d2d8159efbbd4487d"

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
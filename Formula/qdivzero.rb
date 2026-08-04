class Qdivzero < Formula
  desc "Command-line client for the QDivZero API"
  homepage "https://github.com/QDivZero/qdivzero-cli"
  version "1.0.1"

  on_macos do
    on_arm do
      url "https://github.com/QDivZero/qdivzero-cli/releases/download/v1.0.1/qdivzero_1.0.0_darwin_arm64.tar.gz"
      sha256 "4fde79ca56a2b56bdaa53fb1530f8ecd9585ffef3c6ed99fa2095cc9f3a46235"
    end
    on_intel do
      url "https://github.com/QDivZero/qdivzero-cli/releases/download/v1.0.1/qdivzero_1.0.0_darwin_amd64.tar.gz"
      sha256 "434843dc3b1254f4c0a611b46cdd5ab4567f1718a3a9d237209cf7e8f7c97bc3"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/QDivZero/qdivzero-cli/releases/download/v1.0.1/qdivzero_1.0.0_linux_arm64.tar.gz"
        sha256 "473e7f4dae269c694b04e5d49083e386f0da3c30c5f4b4923f920d6ceec33242"
      end
    end
    on_intel do
      url "https://github.com/QDivZero/qdivzero-cli/releases/download/v1.0.1/qdivzero_1.0.0_linux_amd64.tar.gz"
      sha256 "c5bcc98de5ea40be10e192bbabb2ca297b85a025a37d39579a186b25fa59d642"
    end
  end

  def install
    bin.install "qdivzero"
  end

  test do
    system "#{bin}/qdivzero", "version"
  end
end

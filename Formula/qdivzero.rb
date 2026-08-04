class Qdivzero < Formula
  desc "Command-line client for the QDivZero API"
  homepage "https://github.com/QDivZero/qdivzero-cli"
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/QDivZero/qdivzero-cli/releases/download/v1.0.0/qdivzero_1.0.0_darwin_arm64.tar.gz"
      sha256 "40d7285b3fa78de217c1d7c93883a2dbb5b2619e2b20126bf7e501d8ee92aa5c"
    end
    on_intel do
      url "https://github.com/QDivZero/qdivzero-cli/releases/download/v1.0.0/qdivzero_1.0.0_darwin_amd64.tar.gz"
      sha256 "e08b8c819fdd26c089c4d80873687d22c1483b80619fe0ed8b19a8b737f0c9d9"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/QDivZero/qdivzero-cli/releases/download/v1.0.0/qdivzero_1.0.0_linux_arm64.tar.gz"
        sha256 "4f0480b78d7352ed507c91614afd7b5886815db6da3c88a3ac2922b833f0338f"
      end
    end
    on_intel do
      url "https://github.com/QDivZero/qdivzero-cli/releases/download/v1.0.0/qdivzero_1.0.0_linux_amd64.tar.gz"
      sha256 "e1d5ccb8d3ac8e5880aa64567bfb5b3ffc7f7b6df7475c231ed7039f08e83c6c"
    end
  end

  def install
    bin.install "qdivzero"
  end

  test do
    system "#{bin}/qdivzero", "version"
  end
end

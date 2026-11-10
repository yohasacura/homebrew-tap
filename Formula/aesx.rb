# Written by .github/workflows/update.yml from the latest aesx release; edit the workflow, not this file.
class Aesx < Formula
  desc "Free, offline file encryption with AES-256-GCM and no third-party code"
  homepage "https://yohasacura.github.io/aesx/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/yohasacura/aesx/releases/download/v1.0.2/aesx-1.0.2-osx-arm64.tar.gz"
      sha256 "c0abf7897bbd3b534328458b0405987917b8cb34532142857cbd9c15b152345f"
    end
    on_intel do
      url "https://github.com/yohasacura/aesx/releases/download/v1.0.2/aesx-1.0.2-osx-x64.tar.gz"
      sha256 "527992e739438633f6021c0f69f614138f90176f421e2356f3345554f4bb4878"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yohasacura/aesx/releases/download/v1.0.2/aesx-1.0.2-linux-arm64.tar.gz"
      sha256 "4816d8c9e4794663a71c681a89fd406d3c62c63989719c07a0d5e89b69ee2e76"
    end
    on_intel do
      url "https://github.com/yohasacura/aesx/releases/download/v1.0.2/aesx-1.0.2-linux-x64.tar.gz"
      sha256 "fb65c64f748bd2995e8fd00308d5fce1943b5bf1f463faf4c945265d76d85b3a"
    end
  end

  def install
    bin.install "aesx"
  end

  test do
    assert_match "aesx #{version}", shell_output("#{bin}/aesx --version")
    assert_match "All self-tests passed.", shell_output("#{bin}/aesx selftest")
  end
end

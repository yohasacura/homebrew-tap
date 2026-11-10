# Written by .github/workflows/update.yml from the latest aesx release; edit the workflow, not this file.
class Aesx < Formula
  desc "Free, offline file encryption with AES-256-GCM and no third-party code"
  homepage "https://yohasacura.github.io/aesx/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/yohasacura/aesx/releases/download/v1.0.1/aesx-1.0.1-osx-arm64.tar.gz"
      sha256 "4ed5e0c85635223ed46d21441e0fc7002a4abf034743a5e2e8c62b0236004dc7"
    end
    on_intel do
      url "https://github.com/yohasacura/aesx/releases/download/v1.0.1/aesx-1.0.1-osx-x64.tar.gz"
      sha256 "e04e0310eb6dcad7ac7919ba51fb377919bf07d323eda14d27c9eeae711eac5f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yohasacura/aesx/releases/download/v1.0.1/aesx-1.0.1-linux-arm64.tar.gz"
      sha256 "3785f86e9f65d892bc6b897fc1bdee7ebf5a7b2b3c844cd2f2b727924f110cd8"
    end
    on_intel do
      url "https://github.com/yohasacura/aesx/releases/download/v1.0.1/aesx-1.0.1-linux-x64.tar.gz"
      sha256 "28d36c8d6f0a41baf633d927a4daf338991de5cf2ff74fc1a4f4a8c2022f98f9"
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

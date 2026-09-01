class Launchdeck < Formula
  desc "Unified macOS service console for launchd and Homebrew"
  homepage "https://github.com/sderosiaux/launchdeck"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sderosiaux/launchdeck/releases/download/v0.1.4/launchdeck-aarch64-apple-darwin.tar.gz"
      sha256 "695633fef38e7dc5aafe73211e5d50459906c26c883491961cf4d3f2791d4417"
    end

    on_intel do
      url "https://github.com/sderosiaux/launchdeck/releases/download/v0.1.4/launchdeck-x86_64-apple-darwin.tar.gz"
      sha256 "b22e9ac04bfc3c45787812b479931a3f15cbd225282d5b9babf3b638b03c96cf"
    end
  end

  def install
    bin.install "launchdeck"
  end

  test do
    assert_match "Launchdeck", shell_output("#{bin}/launchdeck --help")
  end
end

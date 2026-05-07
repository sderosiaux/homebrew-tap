class Launchdeck < Formula
  desc "Unified macOS service console for launchd and Homebrew"
  homepage "https://github.com/sderosiaux/launchdeck"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sderosiaux/launchdeck/releases/download/v0.1.3/launchdeck-aarch64-apple-darwin.tar.gz"
      sha256 "fe1d3ff830319e48b4f5ac38966ffee2702cc6095eb52a2bd84f86e025373ce0"
    end

    on_intel do
      url "https://github.com/sderosiaux/launchdeck/releases/download/v0.1.3/launchdeck-x86_64-apple-darwin.tar.gz"
      sha256 "05f850b9ed3f9116ba131bb2cf995f41ad5d48077dfd7e405d6ec09de375ca17"
    end
  end

  def install
    bin.install "launchdeck"
  end

  test do
    assert_match "Launchdeck", shell_output("#{bin}/launchdeck --help")
  end
end

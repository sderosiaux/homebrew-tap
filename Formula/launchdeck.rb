class Launchdeck < Formula
  desc "Unified macOS service console for launchd and Homebrew"
  homepage "https://github.com/sderosiaux/launchdeck"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sderosiaux/launchdeck/releases/download/v0.1.2/launchdeck-aarch64-apple-darwin.tar.gz"
      sha256 "9a44db9384928dc9de5d21011394375c049b08d94fedaf8fc390fb9eeb8358c4"
    end

    on_intel do
      url "https://github.com/sderosiaux/launchdeck/releases/download/v0.1.2/launchdeck-x86_64-apple-darwin.tar.gz"
      sha256 "f60b316bde097176712e46e7db3cdbadc5054a5b6ae4fbf42158a27479881354"
    end
  end

  def install
    bin.install "launchdeck"
  end

  test do
    assert_match "Launchdeck", shell_output("#{bin}/launchdeck --help")
  end
end

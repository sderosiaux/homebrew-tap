class Launchdeck < Formula
  desc "Keyboard-first macOS TUI for launchd jobs and Homebrew services"
  homepage "https://github.com/sderosiaux/launchdeck"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sderosiaux/launchdeck/releases/download/v0.1.1/launchdeck-aarch64-apple-darwin.tar.gz"
      sha256 "ffd2b06c2ee3a97db5dda7c377ee99ded970f09659f37ceb7773072b7c38f3d9"
    end

    on_intel do
      url "https://github.com/sderosiaux/launchdeck/releases/download/v0.1.1/launchdeck-x86_64-apple-darwin.tar.gz"
      sha256 "327d9266882c67c8da94ddccba526a2701df759c69a9f90a80318b5bd7e8eefe"
    end
  end

  def install
    bin.install "launchdeck"
  end

  test do
    assert_match "Launchdeck", shell_output("#{bin}/launchdeck --help")
  end
end

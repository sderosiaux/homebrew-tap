class Launchdeck < Formula
  desc "Keyboard-first macOS TUI for launchd jobs and Homebrew services"
  homepage "https://github.com/sderosiaux/launchdeck"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sderosiaux/launchdeck/releases/download/v0.1.0/launchdeck-aarch64-apple-darwin.tar.gz"
      sha256 "3e4ba2b97906fe4e13bdce021f819747a9f35ca942f06e62fc595f045ede8e5f"
    end

    on_intel do
      url "https://github.com/sderosiaux/launchdeck/releases/download/v0.1.0/launchdeck-x86_64-apple-darwin.tar.gz"
      sha256 "aa49ab8ec54d50e72e99cd9b34d8697f1af91192f5a23d2404bb5272d03fd3bd"
    end
  end

  def install
    bin.install "launchdeck"
  end

  test do
    assert_match "Launchdeck", shell_output("#{bin}/launchdeck --help")
  end
end

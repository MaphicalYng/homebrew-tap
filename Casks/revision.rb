cask "revision" do
  version "0.5.0"

  on_macos do
    on_arm do
      sha256 "1e97d27b0705e5ee35bd8e5f572f572d039789f9f73a4cc4acaaa2003a133229"
      url "https://homebrew-tap.maphical.dev/revision/#{version}/revision-#{version}-mac-arm64.dmg?v=0dcefb7"
    end
    on_intel do
      sha256 "4267c110a2b5b4a8c66e4052692b17267533aaba4cabe8486ab1933f57a59f33"
      url "https://homebrew-tap.maphical.dev/revision/#{version}/revision-#{version}-mac-x64.dmg?v=0dcefb7"
    end

    depends_on macos: :ventura

    app "revision.app"
  end
  on_linux do
    sha256 "190a21bcc3d6e3278e526d8fed4088dac61eb3cfb356aa7d0ca9fc86a0b8e23d"

    url "https://homebrew-tap.maphical.dev/revision/#{version}/revision-#{version}-linux-x86_64.AppImage?v=0dcefb7"

    depends_on arch: :x86_64

    app_image "revision-#{version}-linux-x86_64.AppImage", target: "revision.AppImage"
  end

  name "revision"
  desc "Browse local Git branches, commit history, and side-by-side diffs"
  homepage "https://github.com/MaphicalYng/revision"

  livecheck do
    url "https://github.com/MaphicalYng/revision/releases"
    strategy :github_latest
  end

  depends_on formula: "git"
end

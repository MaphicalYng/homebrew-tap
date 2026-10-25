cask "revision" do
  version "0.2.0"

  on_macos do
    on_arm do
      sha256 "c0fc590b524e5385ca997f556e940db904280de9c6f1973f804f51e7584eb223"
      url "https://homebrew-tap.maphical.dev/revision/#{version}/revision-#{version}-mac-arm64.dmg"
    end
    on_intel do
      sha256 "281d765937b26cbfd7d8965b41d99a71289b992d99ab1af17b295f7d767aaea6"
      url "https://homebrew-tap.maphical.dev/revision/#{version}/revision-#{version}-mac-x64.dmg"
    end

    app "revision.app"
  end

  on_linux do
    depends_on arch: :x86_64

    sha256 "621889c6782c7bcb3673079dc16854b4ca642da90e356f0f7624247fa823d842"
    url "https://homebrew-tap.maphical.dev/revision/#{version}/revision-#{version}-linux-x86_64.AppImage"

    app_image "revision-#{version}-linux-x86_64.AppImage"
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

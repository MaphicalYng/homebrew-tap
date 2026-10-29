cask "revision" do
  version "0.3.0"

  on_macos do
    on_arm do
      sha256 "2250190b49c3158a5ff0f78866abdec17e4e344aed64fd2c2b7cfa72551dbe14"
      url "https://homebrew-tap.maphical.dev/revision/#{version}/revision-#{version}-mac-arm64.dmg?v=0f97cf0"
    end
    on_intel do
      sha256 "53a7ad5eb77f4dc6414180d3057e9de13778b809e7970a65758b5808bd7479d3"
      url "https://homebrew-tap.maphical.dev/revision/#{version}/revision-#{version}-mac-x64.dmg?v=0f97cf0"
    end

    depends_on macos: :ventura

    app "revision.app"
  end
  on_linux do
    sha256 "5a114bde7ab6f04883b27ee3f33bb7cd39b64cba6d4e2cb0ba87452e9323828f"

    url "https://homebrew-tap.maphical.dev/revision/#{version}/revision-#{version}-linux-x86_64.AppImage?v=0f97cf0"

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

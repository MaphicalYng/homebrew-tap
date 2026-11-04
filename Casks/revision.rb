cask "revision" do
  version "0.4.0"

  on_macos do
    on_arm do
      sha256 "4bdb0f05b6e31659728abf2264ca088ebe223bbc28f8ce9bea0672d27d590375"
      url "https://homebrew-tap.maphical.dev/revision/#{version}/revision-#{version}-mac-arm64.dmg?v=d0f709f"
    end
    on_intel do
      sha256 "1c0d57d1a82dfd85947b0b63e6cac8e9484b13b71a5790363a16be0af5c9529a"
      url "https://homebrew-tap.maphical.dev/revision/#{version}/revision-#{version}-mac-x64.dmg?v=d0f709f"
    end

    depends_on macos: :ventura

    app "revision.app"
  end
  on_linux do
    sha256 "62709bf1756b54d3a0d6c57cd2f8aedf7164185eb4bc1c2ea3a377ac1ce2bdd2"

    url "https://homebrew-tap.maphical.dev/revision/#{version}/revision-#{version}-linux-x86_64.AppImage?v=d0f709f"

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

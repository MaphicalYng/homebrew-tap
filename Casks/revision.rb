cask "revision" do
  version "0.5.1"

  on_macos do
    on_arm do
      sha256 "b4d3ecc3d9d0bd0d678926cb01305e9f699d6ab5bcb6899c1ad2042f9fd6ffa6"
      url "https://homebrew-tap.maphical.dev/revision/#{version}/revision-#{version}-mac-arm64.dmg?v=c156fd9"
    end
    on_intel do
      sha256 "0815d8075bcd12a3c5bd850f14f29d4726e0a887df3fcdf03b76845b7432c5a7"
      url "https://homebrew-tap.maphical.dev/revision/#{version}/revision-#{version}-mac-x64.dmg?v=c156fd9"
    end

    depends_on macos: :ventura

    app "revision.app"
  end
  on_linux do
    sha256 "aea41fb4324ded5a823b4f24f1c04f2df4789046f84a6218101380cbeb45b991"

    url "https://homebrew-tap.maphical.dev/revision/#{version}/revision-#{version}-linux-x86_64.AppImage?v=c156fd9"

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

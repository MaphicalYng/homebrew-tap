cask "revision" do
  version "0.2.1"

  on_macos do
    on_arm do
      sha256 "2b78b74ef551073a2613a0dd8606b3e10b4ca15cf792782f6221f81ae0a382bd"
      url "https://homebrew-tap.maphical.dev/revision/#{version}/revision-#{version}-mac-arm64.dmg"
    end
    on_intel do
      sha256 "5b5bc2bcfa2d07e4d842fe4bd935e97742ce3eefc64bf47c5493c1059138d316"
      url "https://homebrew-tap.maphical.dev/revision/#{version}/revision-#{version}-mac-x64.dmg"
    end

    depends_on macos: :ventura

    app "revision.app"
  end

  on_linux do
    depends_on arch: :x86_64

    sha256 "6e033eca3b3063800bf49643fe5ea7297bc14f28562d33fbb90778e47bcc39bf"
    url "https://homebrew-tap.maphical.dev/revision/#{version}/revision-#{version}-linux-x86_64.AppImage"

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

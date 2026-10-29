cask "revision" do
  version "0.3.0"

  on_macos do
    on_arm do
      sha256 "bc3280f53fab2d28c54b9a841262624f18d20da2875d12be2cd0da95efb29d16"
      url "https://homebrew-tap.maphical.dev/revision/#{version}/revision-#{version}-mac-arm64.dmg"
    end
    on_intel do
      sha256 "f58b50fe1adceb7cf9647650c3cfa397b14ff984ceca8bb05d0973bc5cad2c46"
      url "https://homebrew-tap.maphical.dev/revision/#{version}/revision-#{version}-mac-x64.dmg"
    end

    depends_on macos: :ventura

    app "revision.app"
  end
  on_linux do
    sha256 "90cbfc18ff38b658909fa07211ed318e61cdaaa7fe2109d76dac7b6fae346491"

    url "https://homebrew-tap.maphical.dev/revision/#{version}/revision-#{version}-linux-x86_64.AppImage"

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

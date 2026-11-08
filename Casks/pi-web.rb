cask "pi-web" do
  version "0.15.0-imp-0.1.0"

  on_macos do
    on_arm do
      sha256 "3666b8855276b83172317800669051e351fc3192c415f4571c9c97fd6c6ed832"
      # GitHub replaces the space in "Pi Web-<version>-arm64.dmg" with a dot.
      url "https://github.com/MaphicalYng/pi-web/releases/download/v#{version}/Pi.Web-#{version}-arm64.dmg"
    end

    depends_on macos: :monterey

    app "Pi Web.app"
  end

  name "Pi Web"
  desc "Web UI for the pi coding agent"
  homepage "https://github.com/MaphicalYng/pi-web"

  livecheck do
    skip "Tags are fork releases named <upstream>-imp-<n>, which GitHub's latest-tag strategy truncates"
  end
end

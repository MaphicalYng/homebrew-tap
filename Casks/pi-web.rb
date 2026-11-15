cask "pi-web" do
  version "0.17.0-imp-0.2.0"

  on_macos do
    on_arm do
      sha256 "dd91638691a6ee0d2ea52ea9a0b2b063302722f4a0623f4f85baa9d8df82fd02"
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

  caveats do
    <<~EOS
      Pi Web is unsigned and not notarized. If macOS prevents it from opening
      and you trust this release, remove its quarantine attribute with:
        xattr -dr com.apple.quarantine "#{appdir}/Pi Web.app"
    EOS
  end
end

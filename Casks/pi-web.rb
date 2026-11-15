cask "pi-web" do
  version "0.17.0-imp-0.2.0"

  on_macos do
    on_arm do
      sha256 "dd91638691a6ee0d2ea52ea9a0b2b063302722f4a0623f4f85baa9d8df82fd02"
      # ?v= is the release commit's short id: the CDN caches negative responses, so a fresh
      # token keeps this path from being served out of a stale entry.
      url "https://homebrew-tap.maphical.dev/pi-web/#{version}/pi-web-#{version}-mac-arm64.dmg?v=a065193"
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

cask "qsys-mac-installer" do
  version "0.1.9"
  sha256 "dca4b0b224afc194ff8ea8658e11505b134ba2c03ff8c484925d9d2a98f64c52"

  url "https://github.com/reowens/qsys-tools/releases/download/qsys-mac-installer-v#{version}/qsys-mac-installer.dmg"
  name "Q-SYS Mac Installer"
  desc "BYO-installer wrapper for running Q-SYS Designer"
  homepage "https://github.com/reowens/qsys-tools"

  livecheck do
    url :url
    regex(/^qsys-mac-installer[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Q-SYS Mac Installer.app"

  zap trash: "~/Library/Saved Application State/io.github.reowens.qsys-mac-installer.savedState"
end

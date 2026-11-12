cask "qsys-mac-installer" do
  version "0.1.11"
  sha256 "4c7fe7a120467d6b8647d7c644a3688f2d734de67db7dc7ee7ea62dffd811260"

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

cask "qsys-mac-installer" do
  version "0.1.3"
  sha256 "2ff6cf90433d90a17b332dd7c5e4737845e7c4a5fb193a786bf38391ee67b92a"

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

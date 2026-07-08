cask "qsys-mac-installer" do
  version "0.1.4"
  sha256 "c0c41dd235cf49bd9bdae5454d7ff123cfd93cdf936c30cf1b66593dda3d12f0"

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

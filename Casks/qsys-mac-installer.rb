cask "qsys-mac-installer" do
  version "0.1.5"
  sha256 "8bb2065105c4e68b47d0465f30c0bff8067165776a41f1537fa1ffbd86a24103"

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

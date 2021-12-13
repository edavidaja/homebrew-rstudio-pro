cask "rstudio-pro" do
  version :latest
  sha256 :no_check

  url "https://rstudio.org/download/latest/daily/desktop/mac/RStudio-pro-latest.dmg",
      verified: "https://rstudio.org/"
  name "RStudio Pro"
  homepage "https://www.rstudio.com/"

  conflicts_with cask: "rstudio"
  depends_on macos: ">= :high_sierra"

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"

end

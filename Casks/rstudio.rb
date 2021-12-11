cask "rstudio" do
  version :latest
  sha256 :no_check

  url "https://rstudio.org/download/latest/daily/desktop/mac/RStudio-pro-latest.dmg",
      verified: "https://rstudio.org/"
  name "RStudio Pro"
  desc "Integrated development environment for R"
  homepage "https://www.rstudio.com/"

  conflicts_with cask: "rstudio"
  depends_on macos: ">= :high_sierra"

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"

  caveats <<~EOS
    #{token} depends on R. The R Project provides official binaries:
      brew install --cask r
    Alternatively, the Homebrew-compiled version of R omits the GUI app:
      brew install r
  EOS
end

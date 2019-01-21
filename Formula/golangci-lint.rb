class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.13/golangci-lint-1.13-darwin-amd64.tar.gz"
  version "1.13"
  sha256 "6c32ed03f4adb6d136f158ac40667e82d6a1faaedc8dd896ef211e31fd350dd2"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

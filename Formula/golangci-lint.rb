class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.10/golangci-lint-1.10-darwin-amd64.tar.gz"
  version "1.10"
  sha256 "3710b5d3c015b524a8c5534c614672bd5445199e65ccffb6bfa3b8d06b7ea56a"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

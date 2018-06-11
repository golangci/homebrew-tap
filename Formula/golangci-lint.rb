class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.6.1/golangci-lint-1.6.1-darwin-amd64.tar.gz"
  version "1.6.1"
  sha256 "1fdf5250d4c0f4aac7062b1efe21783094795ddd22fb5e7d574653e1ebb9ec02"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

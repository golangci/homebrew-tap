class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.9/golangci-lint-1.9-darwin-amd64.tar.gz"
  version "1.9"
  sha256 "c221b2504a0d69fd243649b382045a8c350b7c8ab8196ec5dcb8b2044b4ab0b8"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

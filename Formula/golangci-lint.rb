class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.10.1/golangci-lint-1.10.1-darwin-amd64.tar.gz"
  version "1.10.1"
  sha256 "a3c2c64167dc3891d758053233b7555c420d5a6a2fca2571da107785813613e0"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

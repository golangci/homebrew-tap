class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.3.4/golangci-lint-1.3.4-darwin-amd64.tar.gz"
  version "1.3.4"
  sha256 "f2a2820e5009635c346bb841bf76ae1244487a0d6741b41ac7a3a5adeb5069e0"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

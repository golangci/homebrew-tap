class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.3.6/golangci-lint-1.3.6-darwin-amd64.tar.gz"
  version "1.3.6"
  sha256 "6d651d7c1ad611417023f0919397f2100fff83d6e53203123ebc7ae5db33a4ac"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

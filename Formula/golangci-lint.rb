class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.8.1/golangci-lint-1.8.1-darwin-amd64.tar.gz"
  version "1.8.1"
  sha256 "d933ecbd0fae0a01fdbc3bc31a474e8f40bf45f89e559476ec7cbd781cbe5537"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

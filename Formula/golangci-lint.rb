class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.10.2/golangci-lint-1.10.2-darwin-amd64.tar.gz"
  version "1.10.2"
  sha256 "1fb0ce5b71bcfd5fb4da2553c4d070f3d73e202ddfd59fc836379a2e58032b37"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

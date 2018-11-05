class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.11.3/golangci-lint-1.11.3-darwin-amd64.tar.gz"
  version "1.11.3"
  sha256 "f7b3502e8c2113ac59e59b27f014f1d8ea67be67199dd59fe497d9c67eebcc18"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.4.1/golangci-lint-1.4.1-darwin-amd64.tar.gz"
  version "1.4.1"
  sha256 "0592e8869ddf01d2f9c6d332808b118e0fb6aee9a5d786b71183ebc341fe584a"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

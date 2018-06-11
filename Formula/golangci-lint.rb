class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.6/golangci-lint-1.6-darwin-amd64.tar.gz"
  version "1.6"
  sha256 "dcd8d4afbe7cbb8a1201088bf1de38f402c7e4afef85e6c1f0ed3ade737accda"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

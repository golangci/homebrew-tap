class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.13.2/golangci-lint-1.13.2-darwin-amd64.tar.gz"
  version "1.13.2"
  sha256 "03cc012c11e18f7836fea3c3b527c3650fde2ae9f47aa201d5e937ed30185e66"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

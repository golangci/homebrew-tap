class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.12.2/golangci-lint-1.12.2-darwin-amd64.tar.gz"
  version "1.12.2"
  sha256 "c73c399244cd922a2b5fdfe7f4c46301288db42888ca90132d44e343fa4b3df6"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

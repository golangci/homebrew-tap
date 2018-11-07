class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.12/golangci-lint-1.12-darwin-amd64.tar.gz"
  version "1.12"
  sha256 "0ecd0bc47cef6868c678ead81dec85aafafb68f6c7135dee3c1cdc4d2f01e364"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.10.2/golangci-lint-1.10.2-darwin-amd64.tar.gz"
  version "1.10.2"
  sha256 "28fd477261e956412fb9aeab12f159ed370041863658f4f481ef84b7e440d940"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

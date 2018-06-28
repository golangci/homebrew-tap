class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.8/golangci-lint-1.8-darwin-amd64.tar.gz"
  version "1.8"
  sha256 "58648e1b640673d1b1507b65dfec701562dea2d18cac2969c28297cd0ca45b6b"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

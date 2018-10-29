class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.11.2/golangci-lint-1.11.2-darwin-amd64.tar.gz"
  version "1.11.2"
  sha256 "8ac30b4edaf4762575d001424d7d342a31059b32803db64b0c40242a720fce42"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

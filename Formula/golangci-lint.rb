class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.11.1/golangci-lint-1.11.1-darwin-amd64.tar.gz"
  version "1.11.1"
  sha256 "05d8a3ad15fcb54cc44ba8709d81a80852ae4a6663936e6cb36c215ec32767d1"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

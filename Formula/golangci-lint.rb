class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.9.3/golangci-lint-1.9.3-darwin-amd64.tar.gz"
  version "1.9.3"
  sha256 "a7d5574d09fbf9560b434633ba47da11465b83e3e3cfb69565cb3a7404cecc32"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

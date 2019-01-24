class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.13.1/golangci-lint-1.13.1-darwin-amd64.tar.gz"
  version "1.13.1"
  sha256 "23087f83af3302be1245bc250c1381c7529ef53557e5cb35537b63ade0d5baef"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.11/golangci-lint-1.11-darwin-amd64.tar.gz"
  version "1.11"
  sha256 "e2b5089e13d6a7f8e838f1e91450633671ee8b17cb1fe1c49e1b269e4d15b15d"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

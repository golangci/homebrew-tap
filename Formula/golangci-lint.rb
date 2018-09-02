class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.10.2/golangci-lint-1.10.2-darwin-amd64.tar.gz"
  version "1.10.2"
  sha256 "47899ce458681d496d6c9171b120fdb603a600d67e0b4450df8d3f39262f4567"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

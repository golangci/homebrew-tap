class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.7.1/golangci-lint-1.7.1-darwin-amd64.tar.gz"
  version "1.7.1"
  sha256 "3e8c138ec4e6c53bf5a641b3c2b6dbeef4cece5aef9ff3be281fa656f5697b8f"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

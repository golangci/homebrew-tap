class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.12.4/golangci-lint-1.12.4-darwin-amd64.tar.gz"
  version "1.12.4"
  sha256 "9446c692df0ebfbab42ef7c59534d32d129bb6545abcf5ce05d1f1087fb90430"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

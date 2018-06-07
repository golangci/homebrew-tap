class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.5/golangci-lint-1.5-darwin-amd64.tar.gz"
  version "1.5"
  sha256 "d7f85a9da511b4c2242bb0b558ddcb6c66335224f7e0212b3c8127e20bf81de6"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.4/golangci-lint-1.4-darwin-amd64.tar.gz"
  version "1.4"
  sha256 "35659ad3d26586f5a9f3ea74daebb0cac6186845dfc55feaaacf2031e3ffb87a"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.12.5/golangci-lint-1.12.5-darwin-amd64.tar.gz"
  version "1.12.5"
  sha256 "b85be727f678bd9c200eb7a2244f1d078fa8221db614133e206b27915c60e67e"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

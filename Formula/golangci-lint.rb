class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.12.1/golangci-lint-1.12.1-darwin-amd64.tar.gz"
  version "1.12.1"
  sha256 "f5397db16f7119abe9867f6ecdc8ab3df87ecd89defdddf678abdc42fac72eb2"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

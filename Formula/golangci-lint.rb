class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.13/golangci-lint-1.13-darwin-amd64.tar.gz"
  version "1.13"
  sha256 "da43a1afbcd5f3ab0c5d4bea77626f3e009b38b06163a8bb8b951dc0d7648546"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

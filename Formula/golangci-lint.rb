class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.9.1/golangci-lint-1.9.1-darwin-amd64.tar.gz"
  version "1.9.1"
  sha256 "e843c7ce6e11eca238b06949528b767bfa378a33d8164ee2100fcc7de9d8f7fc"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

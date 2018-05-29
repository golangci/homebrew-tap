class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.3.3/golangci-lint-1.3.3-darwin-amd64.tar.gz"
  version "1.3.3"
  sha256 "b431d5978015f66fc4b31a720d8bc5a63b123754934d4ef5235c8e5c5078ffc7"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

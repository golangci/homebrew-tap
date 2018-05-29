class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.3.5/golangci-lint-1.3.5-darwin-amd64.tar.gz"
  version "1.3.5"
  sha256 "d94d6b6c74f108ce10f866b6afe9e01670ff99d71be409b3113fbd502ac495fa"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

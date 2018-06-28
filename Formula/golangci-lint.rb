class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.7.3/golangci-lint-1.7.3-darwin-amd64.tar.gz"
  version "1.7.3"
  sha256 "f7567a9ece18a8502af6a09ac866b2a246bfa61a8680ef391f184d51a0bfaecf"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

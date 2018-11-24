class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.12.3/golangci-lint-1.12.3-darwin-amd64.tar.gz"
  version "1.12.3"
  sha256 "81aaaf0b8980a7fcff3174aafbd9b248f019ddb156229c8bee05d464c21d6182"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

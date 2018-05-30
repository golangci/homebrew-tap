class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.3.7/golangci-lint-1.3.7-darwin-amd64.tar.gz"
  version "1.3.7"
  sha256 "a0b258b5016eaea03773ff28c183fc4299c0aac54733c6dd6e50ce0272db519c"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

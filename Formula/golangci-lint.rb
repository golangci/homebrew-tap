class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.7/golangci-lint-1.7-darwin-amd64.tar.gz"
  version "1.7"
  sha256 "01408fe5cbef6fa98d96fbb32045c895ae8a2bf2376fd8cf6eb10c624ede13d6"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

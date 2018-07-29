class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.9.2/golangci-lint-1.9.2-darwin-amd64.tar.gz"
  version "1.9.2"
  sha256 "96ba041a43715ae420a76eba4d0c6ace00e989821b7819096d937f85d581fe1e"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

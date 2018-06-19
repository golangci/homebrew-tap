class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.7.2/golangci-lint-1.7.2-darwin-amd64.tar.gz"
  version "1.7.2"
  sha256 "588a934160e6e828bb0fb9f53f4a88b403f98967c0e1156b5bad1c927687e3f1"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

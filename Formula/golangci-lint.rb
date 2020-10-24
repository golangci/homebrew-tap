# This file was generated by GoReleaser. DO NOT EDIT.
class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  version "1.32.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/golangci/golangci-lint/releases/download/v1.32.0/golangci-lint-1.32.0-darwin-amd64.tar.gz"
    sha256 "294bca5902a5c992345dc773549cabcf25029383aa3bafd06cf65d0164b22faf"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/golangci/golangci-lint/releases/download/v1.32.0/golangci-lint-1.32.0-linux-amd64.tar.gz"
      sha256 "774fc71efc2b41327aeca7bdff335c6387ff3750e0cfd5cc18a64709ba1e412a"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/golangci/golangci-lint/releases/download/v1.32.0/golangci-lint-1.32.0-linux-arm64.tar.gz"
        sha256 "1571229e6a74f17e83849d2241f214222e236701258e551def306495364d7490"
      else
        url "https://github.com/golangci/golangci-lint/releases/download/v1.32.0/golangci-lint-1.32.0-linux-armv6.tar.gz"
        sha256 "b6c0ef8ad1136054768b30073e6c8d4ecbd185fad9608d57ac83f4107b37904d"
      end
    end
  end

  def install
    bin.install "golangci-lint"
    output = Utils.popen_read("#{bin}/golangci-lint completion bash")
    (bash_completion/"golangci-lint").write output
    output = Utils.popen_read("#{bin}/golangci-lint completion zsh")
    (zsh_completion/"_golangci-lint").write output
    output = Utils.popen_read("#{bin}/golangci-lint completion fish")
    (fish_completion/"eksctl.fish").write output
    prefix.install_metafiles
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  version "1.46.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/golangci/golangci-lint/releases/download/v1.46.2/golangci-lint-1.46.2-darwin-amd64.tar.gz"
      sha256 "658078aaaf7608693f37c4cf1380b2af418ab8b2d23fdb33e7e2d4339328590e"

      def install
        bin.install "golangci-lint"
        output = Utils.popen_read("#{bin}/golangci-lint completion bash")
        (bash_completion/"golangci-lint").write output
        output = Utils.popen_read("#{bin}/golangci-lint completion zsh")
        (zsh_completion/"_golangci-lint").write output
        output = Utils.popen_read("#{bin}/golangci-lint completion fish")
        (fish_completion/"golangci-lint.fish").write output
        prefix.install_metafiles
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/golangci/golangci-lint/releases/download/v1.46.2/golangci-lint-1.46.2-darwin-arm64.tar.gz"
      sha256 "81f9b4afd62ec5e612ef8bc3b1d612a88b56ff289874831845cdad394427385f"

      def install
        bin.install "golangci-lint"
        output = Utils.popen_read("#{bin}/golangci-lint completion bash")
        (bash_completion/"golangci-lint").write output
        output = Utils.popen_read("#{bin}/golangci-lint completion zsh")
        (zsh_completion/"_golangci-lint").write output
        output = Utils.popen_read("#{bin}/golangci-lint completion fish")
        (fish_completion/"golangci-lint.fish").write output
        prefix.install_metafiles
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/golangci/golangci-lint/releases/download/v1.46.2/golangci-lint-1.46.2-linux-amd64.tar.gz"
      sha256 "242cd4f2d6ac0556e315192e8555784d13da5d1874e51304711570769c4f2b9b"

      def install
        bin.install "golangci-lint"
        output = Utils.popen_read("#{bin}/golangci-lint completion bash")
        (bash_completion/"golangci-lint").write output
        output = Utils.popen_read("#{bin}/golangci-lint completion zsh")
        (zsh_completion/"_golangci-lint").write output
        output = Utils.popen_read("#{bin}/golangci-lint completion fish")
        (fish_completion/"golangci-lint.fish").write output
        prefix.install_metafiles
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/golangci/golangci-lint/releases/download/v1.46.2/golangci-lint-1.46.2-linux-arm64.tar.gz"
      sha256 "ff5448ada2b3982581984d64b0dec614dba0a3ea4cab2d6a343c77927fc89f7e"

      def install
        bin.install "golangci-lint"
        output = Utils.popen_read("#{bin}/golangci-lint completion bash")
        (bash_completion/"golangci-lint").write output
        output = Utils.popen_read("#{bin}/golangci-lint completion zsh")
        (zsh_completion/"_golangci-lint").write output
        output = Utils.popen_read("#{bin}/golangci-lint completion fish")
        (fish_completion/"golangci-lint.fish").write output
        prefix.install_metafiles
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/golangci/golangci-lint/releases/download/v1.46.2/golangci-lint-1.46.2-linux-armv6.tar.gz"
      sha256 "177f5210ef04aee282bfbc6ec519d36af5fb7d2b2c8d3f4ea5e59fdba71b0a27"

      def install
        bin.install "golangci-lint"
        output = Utils.popen_read("#{bin}/golangci-lint completion bash")
        (bash_completion/"golangci-lint").write output
        output = Utils.popen_read("#{bin}/golangci-lint completion zsh")
        (zsh_completion/"_golangci-lint").write output
        output = Utils.popen_read("#{bin}/golangci-lint completion fish")
        (fish_completion/"golangci-lint.fish").write output
        prefix.install_metafiles
      end
    end
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

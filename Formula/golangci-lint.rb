# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  version "1.44.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/golangci/golangci-lint/releases/download/v1.44.0/golangci-lint-1.44.0-darwin-amd64.tar.gz"
      sha256 "69dedd13f203acec13d9952994c7c2bed8530fb1c85d75d923454624f000771c"

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
    end
    if Hardware::CPU.arm?
      url "https://github.com/golangci/golangci-lint/releases/download/v1.44.0/golangci-lint-1.44.0-darwin-arm64.tar.gz"
      sha256 "1d05c24d3be9cf7c73ab625a16e0ec237a8289ef4078d5cd52bedaaab41a0ea7"

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
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/golangci/golangci-lint/releases/download/v1.44.0/golangci-lint-1.44.0-linux-amd64.tar.gz"
      sha256 "e059c301ca0bcc0af114586a7f54bab897a5a7830b81a75f614933d9e018e1a4"

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
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/golangci/golangci-lint/releases/download/v1.44.0/golangci-lint-1.44.0-linux-armv6.tar.gz"
      sha256 "a981a9b95a048979eb06fd329588b157c57731d7822ee44bb4f4489863dbaa0d"

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
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/golangci/golangci-lint/releases/download/v1.44.0/golangci-lint-1.44.0-linux-arm64.tar.gz"
      sha256 "f72abcb03b0baf31dcae8c1fee5ab3a17b12d46c6281b1b959e3dd1a11f5655f"

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
    end
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end

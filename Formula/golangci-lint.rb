# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  version "1.50.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/golangci/golangci-lint/releases/download/v1.50.1/golangci-lint-1.50.1-darwin-amd64.tar.gz"
      sha256 "0f615fb8c364f6e4a213f2ed2ff7aa1fc2b208addf29511e89c03534067bbf57"

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
      url "https://github.com/golangci/golangci-lint/releases/download/v1.50.1/golangci-lint-1.50.1-darwin-arm64.tar.gz"
      sha256 "3ca9753d7804b34f9165427fbe339dbea69bd80be8a10e3f02c6037393b2e1c4"

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
      url "https://github.com/golangci/golangci-lint/releases/download/v1.50.1/golangci-lint-1.50.1-linux-amd64.tar.gz"
      sha256 "4ba1dc9dbdf05b7bdc6f0e04bdfe6f63aa70576f51817be1b2540bbce017b69a"

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
      url "https://github.com/golangci/golangci-lint/releases/download/v1.50.1/golangci-lint-1.50.1-linux-arm64.tar.gz"
      sha256 "3ea0a6d5946340f6831646e2c67a317dd9b35bdc4e09b2df953a86f09ba05d74"

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
      url "https://github.com/golangci/golangci-lint/releases/download/v1.50.1/golangci-lint-1.50.1-linux-armv6.tar.gz"
      sha256 "980832f12fbdd0a8e636666839b168c2bbf0ca573ff50b042d3977f65c4987d7"

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

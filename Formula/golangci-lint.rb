# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  version "1.49.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/golangci/golangci-lint/releases/download/v1.49.0/golangci-lint-1.49.0-darwin-amd64.tar.gz"
      sha256 "20cd1215e0420db8cfa94a6cd3c9d325f7b39c07f2415a02d111568d8bc9e271"

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
      url "https://github.com/golangci/golangci-lint/releases/download/v1.49.0/golangci-lint-1.49.0-darwin-arm64.tar.gz"
      sha256 "cabb1a4c35fe1dadbe5a81550a00871281a331e7660cd85ae16e936a7f0f6cfc"

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
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/golangci/golangci-lint/releases/download/v1.49.0/golangci-lint-1.49.0-linux-armv6.tar.gz"
      sha256 "4a41cff3af7f5304751f7bbf4ea617c14ebc1f88481a28a013e61b06d1f7102c"

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
    if Hardware::CPU.intel?
      url "https://github.com/golangci/golangci-lint/releases/download/v1.49.0/golangci-lint-1.49.0-linux-amd64.tar.gz"
      sha256 "5badc6e9fee2003621efa07e385910d9a88c89b38f6c35aded153193c5125178"

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
      url "https://github.com/golangci/golangci-lint/releases/download/v1.49.0/golangci-lint-1.49.0-linux-arm64.tar.gz"
      sha256 "b57ed03d29b8ca69be9925edd67ea305b6013cd5c97507d205fbe2979f71f2b5"

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

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  version "1.42.1"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/golangci/golangci-lint/releases/download/v1.42.1/golangci-lint-1.42.1-darwin-amd64.tar.gz"
      sha256 "9c0042e91218dc1dd4eb7b54e29c7331eff081b3ac3f88b0d5df89b976fcd45c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/golangci/golangci-lint/releases/download/v1.42.1/golangci-lint-1.42.1-darwin-arm64.tar.gz"
      sha256 "f649893bf2b1d24b2632b5e109884a15f3bf25cfdad46b34fb8fd13a016098fd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/golangci/golangci-lint/releases/download/v1.42.1/golangci-lint-1.42.1-linux-amd64.tar.gz"
      sha256 "214b093c15863430c4b66dd39df677dab6e38fc873ded147e331740d50eea51f"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/golangci/golangci-lint/releases/download/v1.42.1/golangci-lint-1.42.1-linux-armv6.tar.gz"
      sha256 "81d5d829dfc93f1123867713d71e0c4e577430aa8833a2b3e7605b0ace79aff8"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/golangci/golangci-lint/releases/download/v1.42.1/golangci-lint-1.42.1-linux-arm64.tar.gz"
      sha256 "0fbb58f36933b502bc841f8b28a5c609ac030d3a843fe1ea2dce2cee3a2b0d10"
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

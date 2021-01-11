# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  version "1.35.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/golangci/golangci-lint/releases/download/v1.35.1/golangci-lint-1.35.1-darwin-amd64.tar.gz"
    sha256 "4008f580c96a6f9f3df8b788a8e8793ed8d9b272fcccdbc46da8374486ea199f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/golangci/golangci-lint/releases/download/v1.35.1/golangci-lint-1.35.1-linux-amd64.tar.gz"
    sha256 "8fef607cd4bacabcd6574a62689765dc0457d805781199a66516ea80b84878e3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/golangci/golangci-lint/releases/download/v1.35.1/golangci-lint-1.35.1-linux-armv6.tar.gz"
    sha256 "7a19960ab6af57aac367bb9a226e562ff918753fa986426913ed2b7bf8991954"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/golangci/golangci-lint/releases/download/v1.35.1/golangci-lint-1.35.1-linux-arm64.tar.gz"
    sha256 "a0a2c662d58e792358c4d918631b40f3a4c842aa4688143b0533eb667e33eeb5"
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

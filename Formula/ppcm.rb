class Ppcm < Formula
  include Language::Python::Virtualenv

  desc "PCM audio file browser/player with a wizard-style TUI"
  homepage "https://github.com/pihitpihit/ppcm"
  url "https://github.com/pihitpihit/ppcm/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "dd3a896e140957ba63adac9f101fbed3ed65f6b1f3acfc580ab176a54073925d"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "ppcm 0.2.2", shell_output("#{bin}/ppcm --version")
  end
end

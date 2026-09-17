class Ppcm < Formula
  include Language::Python::Virtualenv

  desc "PCM audio file browser/player with a wizard-style TUI"
  homepage "https://github.com/pihitpihit/ppcm"
  url "https://github.com/pihitpihit/ppcm/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "19b20e603fe029e9c43972a86206964ddd5f6f67e2dcb13f84eb82bf4d7ca92d"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "ppcm 0.3.0", shell_output("#{bin}/ppcm --version")
  end
end

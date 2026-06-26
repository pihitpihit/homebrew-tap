class Ppcm < Formula
  include Language::Python::Virtualenv

  desc "PCM audio file browser/player with a wizard-style TUI"
  homepage "https://github.com/pihitpihit/ppcm"
  url "https://github.com/pihitpihit/ppcm/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "28890b3f930605690845eafb6d580ee4e55917cd73c79f424463f1e7b13f4dcb"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "ppcm 0.1.1", shell_output("#{bin}/ppcm --version")
  end
end

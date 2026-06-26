class Ppcm < Formula
  include Language::Python::Virtualenv

  desc "PCM audio file browser/player with a wizard-style TUI"
  homepage "https://github.com/pihitpihit/ppcm"
  url "https://github.com/pihitpihit/ppcm/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "e5faffdb7de9a9a31b5d27466576b3d0a94bf55b34a59f3c3d46473ad28a83c6"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "ppcm 0.1.2", shell_output("#{bin}/ppcm --version")
  end
end

class Ppcm < Formula
  include Language::Python::Virtualenv

  desc "PCM audio file browser/player with a wizard-style TUI"
  homepage "https://github.com/pihitpihit/ppcm"
  url "https://github.com/pihitpihit/ppcm/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "e209cd6b37bcf6c37fc264d3bec563b68f8b8433b7bbbcfb717deec05f3dc4a4"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "ppcm 0.2.0", shell_output("#{bin}/ppcm --version")
  end
end

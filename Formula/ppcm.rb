class Ppcm < Formula
  include Language::Python::Virtualenv

  desc "PCM audio file browser/player with a wizard-style TUI"
  homepage "https://github.com/pihitpihit/ppcm"
  url "https://github.com/pihitpihit/ppcm/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "3b13935b1f1b101bb43b150eed0a916827a49119247151a68002427f88f3982c"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "ppcm 0.1.0", shell_output("#{bin}/ppcm --version")
  end
end

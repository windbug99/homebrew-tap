class Openrssgate < Formula
  include Language::Python::Virtualenv

  desc "Read-only CLI for querying OpenRSSGate sources and feeds"
  homepage "https://github.com/<owner>/openrssgate"
  url "https://files.pythonhosted.org/packages/source/o/openrssgate/openrssgate-0.1.0.tar.gz"
  sha256 "22a2a32bf5b230adc95d3a49a6ae71ac9f46edf07ef09a025bbde5d9a4a91791"
  license "MIT"

  depends_on "python@3.13"

  # Fill this section with the output from:
  # brew update-python-resources Formula/openrssgate.rb
  #
  # Example:
  # resource "anyio" do
  #   url "https://files.pythonhosted.org/packages/.../anyio-4.12.0.tar.gz"
  #   sha256 "..."
  # end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Read-only CLI", shell_output("#{bin}/openrssgate --help")
  end
end

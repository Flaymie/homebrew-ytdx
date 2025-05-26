class Ytdx < Formula
  include Language::Python::Virtualenv

  desc "Загрузчик видео с YouTube"
  homepage "https://github.com/flaymie/ytdx"
  url "https://github.com/flaymie/ytdx/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000" # Это нужно будет заменить на реальный хеш после публикации
  license "MIT"

  depends_on "python@3.10"
  depends_on "ffmpeg"

  resource "yt-dlp" do
    url "https://files.pythonhosted.org/packages/be/7e/7f65a3c6ac14b5cf79a15b05c34e8450eecaf3a2edd8bd08c333aa9a5537/yt_dlp-2023.3.4-py2.py3-none-any.whl"
    sha256 "5e0e3810272d4641a7df8a88e0d6fd047d90baafb02c02c6ac527fabfcce701d"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"ytdx", "--help"
  end
end 
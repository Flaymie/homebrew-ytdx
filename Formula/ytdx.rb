class Ytdx < Formula
  include Language::Python::Virtualenv

  desc "Загрузчик видео с YouTube"
  homepage "https://github.com/flaymie/ytdx"
  url "https://github.com/flaymie/ytdx/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "9d1fc3161278912a1b19fe9dc06d493ab1128419696da07ae6d518584bcf02cf"
  license "MIT"

  depends_on "python@3.10"
  depends_on "ffmpeg"

  resource "yt-dlp" do
    url "https://files.pythonhosted.org/packages/25/68/4f108193ebce3ee7beb5f9a21daa6bc875e261150b510be468626f151959/yt_dlp-2025.5.22-py3-none-any.whl"
    sha256 "a49c4b76afeaded6254c3e2b759d8d5a13271aa963d5fccb51fe059d1c313151"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"ytdx", "--help"
  end
end 

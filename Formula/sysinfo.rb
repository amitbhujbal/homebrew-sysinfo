class Sysinfo < Formula
  desc "Simple CLI to show system information"
  homepage "https://github.com/amitbhujbal/sysinfo"
  url "https://github.com/amitbhujbal/sysinfo/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "afb3d08d8919e630b9ad3989433a84f56ab62fd0f6923cc1f91dec2cf76649e9"
  license "MIT"

  depends_on "python@3.13"

  def install
    bin.install "sysinfo.py" => "sysinfo"
  end

  test do
    assert_match "System Info", shell_output("#{bin}/sysinfo")
  end
end

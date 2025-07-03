class See < Formula
  desc "a better way to visualise your file system"
  homepage "https://github.com/vistormu/see"
  version "0.0.4"
  
  on_macos do
    on_arm   do
      url      "https://github.com/vistormu/see/releases/download/v#{version}/see_#{version}_darwin_arm64.tar.gz"
      sha256   "sha256:148da2f35f328d6a974de3e0ab42ca91e53f2fe71877221badcffe97e7e98f4d"
    end
    on_intel do
      url      "https://github.com/vistormu/see/releases/download/v#{version}/see_#{version}_darwin_amd64.tar.gz"
      sha256   "sha256:154e9ce40d07892c520a34a9caba51dab122e61dd8d801b715de52e91ea7f468"
    end
  end
  
  on_linux do
    on_arm   do
      url      "https://github.com/vistormu/see/releases/download/v#{version}/see_#{version}_linux_arm64.tar.gz"
      sha256   "sha256:b8cc892eaee8168ea1207df64aca73ee91c5d60fab3e22792cee92db803762e1"
    end
    on_intel do
      url      "https://github.com/vistormu/see/releases/download/v#{version}/see_#{version}_linux_amd64.tar.gz"
      sha256   "sha256:e0b0f59835349a76c215e1b79ac8a8814817d83815cca9cfa9e9a104daedd119"
    end
  end
  
  def install
    bin.install "see"
  end
  
  test { system bin/"see", "--help" }
end


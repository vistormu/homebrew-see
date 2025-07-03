class See < Formula
  desc "a better way to visualise your file system"
  homepage "https://github.com/vistormu/see"
  version "0.0.4"
  
  on_macos do
    on_arm   do
      url      "https://github.com/vistormu/see/releases/download/v#{version}/see_#{version}_darwin_arm64.tar.gz"
      sha256   "sha256:2ba5186558332cdc7712c0de7a423656ce75c5e6b8753eb878cc7b334ea7c909"
    end
    on_intel do
      url      "https://github.com/vistormu/see/releases/download/v#{version}/see_#{version}_darwin_amd64.tar.gz"
      sha256   "sha256:fd007ddb80364954f13fcf703a127d2961054978820876475fca82a266da2095"
    end
  end
  
  on_linux do
    on_arm   do
      url      "https://github.com/vistormu/see/releases/download/v#{version}/see_#{version}_linux_arm64.tar.gz"
      sha256   "sha256:22b30eaf99da124ff2053b18c3d316614db525357b7b18ae4cc4131af38c0602"
    end
    on_intel do
      url      "https://github.com/vistormu/see/releases/download/v#{version}/see_#{version}_linux_amd64.tar.gz"
      sha256   "sha256:4069a0c4864887baacc3222838c31e58154be2b711688f0734c64eb44c34312f"
    end
  end
  
  def install
    bin.install "see"
  end
  
  test { system bin/"see", "--help" }
end


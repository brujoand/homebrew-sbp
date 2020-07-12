class Sbp < Formula
  desc "Simple Bash Prompt"
  homepage "https://github.com/brujoand/sbp"
  url "https://github.com/brujoand/sbp/releases/download/v0.2.2/sbp-v0.2.2.tar.gz"
  sha256 "a447f4385a9887fd2f236cf2e5f7a16158a8adf4e68800b9dcb2e6e93e4afa92"

  depends_on "bash"

  def install
    prefix.install Dir["*"]
  end

  def caveats
    <<~EOS
      To activate sbp, add the following line to ${HOME}/.bashrc:

        SBP_PATH="#{opt_prefix}"
        source "${SBP_PATH}/sbp.bash"

      Alternatively just execute "#{opt_prefix}/bin/install".
    EOS
  end
end

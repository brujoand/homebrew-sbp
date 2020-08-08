class Sbp < Formula
  desc "Simple Bash Prompt"
  homepage "https://github.com/brujoand/sbp"
  url "https://github.com/brujoand/sbp/releases/download/v0.3/sbp-v0.3.tar.gz"
  sha256 "aab51e34cc49d71eec4d2a95b0e6c265e6babb8511b1729bd95d6a57960a086b"

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

class Sbp < Formula
  desc "Simple Bash Prompt"
  homepage "https://github.com/brujoand/sbp"
  url "https://github.com/brujoand/sbp/releases/download/v0.1.0/sbp-vv0.1.0.tar.gz"
  sha256 "15d8576704e34c7bd9582aeb1ed9eba36a029d8703e09d4ab384ac5ab16b54a6"

  depends_on "bash"

  def caveats
    <<~EOS
      To activate sbp, add the following line to ${HOME}/.bashrc:

        SBP_PATH="#{opt_prefix}"
        source "${SBP_PATH}/sbp.bash"

      Alternatively just execute "#{opt_prefix}/bin/install".
    EOS
  end
end

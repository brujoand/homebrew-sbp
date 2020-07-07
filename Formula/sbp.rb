class Sbp < Formula
  desc "Simple Bash Prompt"
  homepage "https://github.com/brujoand/sbp"
  url "https://github.com/brujoand/sbp/releases/download/v0.1.1/sbp-v0.1.1.tar.gz"
  sha256 "57a7da0717b2615a0b8566e40bdc7bce0ede98d98edab55069a462cbd2f7c33f"

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

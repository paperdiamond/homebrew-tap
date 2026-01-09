class ItermStyler < Formula
  desc "Style your iTerm2 tabs with custom titles, emoji icons, and colors"
  homepage "https://github.com/paperdiamond/iterm-styler"
  url "https://github.com/paperdiamond/iterm-styler/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "d22020e2221a03a97eae9a65a4d03e00f22b0567410bf209cc825bdfb42bcada"
  license "MIT"

  def install
    prefix.install "iterm-styler.zsh"
  end

  def caveats
    <<~EOS
      To activate iterm-styler, add the following to your ~/.zshrc:

        source #{opt_prefix}/iterm-styler.zsh

      Then reload your shell:

        source ~/.zshrc
    EOS
  end

  test do
    assert_predicate prefix/"iterm-styler.zsh", :exist?
  end
end

class VimMinimal < Formula
  desc "Minimal vim with no interpreter interfaces"
  homepage "https://www.vim.org/"
  # vim should only be updated every 50 releases on multiples of 50
  url "https://github.com/vim/vim/archive/v8.2.4850.tar.gz"
  sha256 "e4f126af0803e6e88964000f4eebc2a06adbd28fa855cf93b3bc025c17cf13da"
  license "Vim"
  head "https://github.com/vim/vim.git", branch: "master"

  # Does Vim depend on gettext in the first place?
  # depends_on "gettext"
  #
  # depends_on "lua"
  # depends_on "ncurses"
  # depends_on "perl"
  # depends_on "python@3.10"
  # depends_on "ruby"

  conflicts_with "ex-vi",
    because: "vim and ex-vi both install bin/ex and bin/view"

  conflicts_with "macvim",
    because: "vim and macvim both install vi* binaries"

  conflicts_with "vim",
    because: "vim-minimal and vim both install vim"

  def install
    # https://github.com/Homebrew/homebrew-core/pull/1046
    ENV.delete("SDKROOT")

    # We specify HOMEBREW_PREFIX as the prefix to make vim look in the
    # the right place (HOMEBREW_PREFIX/share/vim/{vimrc,vimfiles}) for
    # system vimscript files. We specify the normal installation prefix
    # when calling "make install".
    system "./configure", "--prefix=#{HOMEBREW_PREFIX}",
                          "--mandir=#{man}",
                          # Always enabled by default
                          # https://github.com/vim/vim/commit/2be7cb73f66cf69659195d9a8ad4beaa359f2865
                          #"--enable-multibyte",
                          #"--with-tlib=ncurses",
                          "--with-compiledby=Ling Cong Xiang <ralcx@outlook.com>",
                          # "--enable-cscope",
                          "--disable-terminal",
                          #"--enable-perlinterp",
                          #"--enable-rubyinterp",
                          #"--enable-python3interp",
                          "--disable-gui",
                          "--without-x",
                          #"--enable-luainterp",
                          #"--with-lua-prefix=#{Formula["lua"].opt_prefix}"
                          "--disable-netbeans"
    system "make"
    # Parallel install could miss some symlinks
    # https://github.com/vim/vim/issues/1031
    ENV.deparallelize

    system "make", "install", "prefix=#{prefix}"
    bin.install_symlink "vim" => "vi"
  end

  test do
    assert_match "+gettext", shell_output("#{bin}/vim --version")
  end
end

class Airshipper < Formula
    desc "official Veloren launcher"
    homepage "https://veloren.net/download/"
    version "0.10.0"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/veloren/airshipper/releases/latest/download/airshipper-macos-x86_64.zip"
        # sha256 "TODO: put sha256 here"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/veloren/airshipper/releases/latest/download/airshipper-macos-aarch64.zip"
        # sha256 "TODO: put sha256 here"
    end

    if OS.linux?
        url "https://github.com/veloren/airshipper/releases/latest/download/airshipper-linux.tar.gz"
        # sha256 "TODO: put sha256 here"
    end

    def install
        bin.install "airshipper"
    end

    test do
        assert shell_output("#{bin}/airshipper --version").start_with?("Airshipper #{version}")
    end
end
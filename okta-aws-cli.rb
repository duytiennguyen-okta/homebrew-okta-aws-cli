class OktaAwsCli < Formula
  desc "Okta authentication in support of aws cli operation"
  homepage "https://github.com/okta/okta-aws-cli"
  url "https://github.com/okta/okta-aws-cli/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "06374f0eb3e371a8ef1a5e8fb2bcd0e5bfcac607aa2083f6c1101b54713a47bf"
  license "Apache-2.0"

  depends_on "go" => :build
  def install
    system "go", "build", "-o", bin/"okta-aws-cli", "cmd/okta-aws-cli/main.go"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test okta-aws-cli`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
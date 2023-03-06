class OktaAwsCli < Formula
  desc "Okta authentication in support of aws cli operation"
  homepage "https://github.com/okta/okta-aws-cli"
  url "https://github.com/okta/okta-aws-cli/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "06374f0eb3e371a8ef1a5e8fb2bcd0e5bfcac607aa2083f6c1101b54713a47bf"
  license "Apache-2.0"

  depends_on "go"
  def install
    system "go", "build", "-o", bin/"okta-aws-cli", "cmd/okta-aws-cli/main.go"
  end

  test do
    str_error = shell_output("#{bin}/okta-aws-cli -w """)
    assert_match "Okta Org Domain value is not set", str_error
  end
end

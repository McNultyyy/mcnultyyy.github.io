provider "godaddy" {}


resource "godaddy_domain_record" "gd-fancy-domain" {
  domain   = "mcnulty.xyz"

  // specify zero or more record blocks
  // a record block allows you to configure A, or NS records with a custom time-to-live value
  // a record block also allow you to configure AAAA, CNAME, TXT, or MX records
  record {
    name = "www"
    type = "CNAME"
    data = "mcnultyyy.github.io"
    ttl = 3600
  }

  // specify any A records associated with the domain
  // GitHub IPs as per https://docs.github.com/en/free-pro-team@latest/github/working-with-github-pages/managing-a-custom-domain-for-your-github-pages-site#configuring-an-apex-domain
  addresses   = [
        "185.199.108.153",
        "185.199.109.153",
        "185.199.110.153",
        "185.199.111.153"
    ]

  // specify any custom nameservers for your domain
  // note: godaddy now requires that the 'custom' nameservers are first supplied through the ui
  nameservers = ["ns75.domains.com", "ns76.domains.com"]
}
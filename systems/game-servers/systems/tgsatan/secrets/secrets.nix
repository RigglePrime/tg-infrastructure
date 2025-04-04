let
  users = import ../../../../../modules/ssh_keys.nix;

  # Systems
  tgsatan = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAgFJAiZ7gf+LoAyNVqMBXTNcGETJJZreVzMOGbOd2C5";
  systems = [tgsatan];
in {
  ## Restic
  "restic-env.age".publicKeys = users ++ systems;
  "restic-key.age".publicKeys = users ++ systems;
  # TGS
  "tgs.age".publicKeys = users ++ systems;
  # Cloudflare
  "cloudflare_api.age".publicKeys = users ++ systems;
  # Cloudflared
  "cloudflared.age".publicKeys = users ++ systems;
  "cloudflared-pem.age".publicKeys = users ++ systems;
  # Tgstation website api key
  "tgstation-web-apikey.age".publicKeys = users ++ systems;
  # AWS Route 53 DNS-01
  "aws_credentials.age".publicKeys = users ++ systems;
  # Atticd
  "attic.age".publicKeys = users ++ systems;
  # Grafana
  "grafana_db.age".publicKeys = users ++ systems;
  "grafana_smtp.age".publicKeys = users ++ systems;
  "grafana_admin.age".publicKeys = users ++ systems;
  # Authentik
  "authentik.age".publicKeys = users ++ systems;
}

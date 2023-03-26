{
  self,
  buildGoModule,
  lib,
}:
buildGoModule {
  pname = "telegraf";
  version = "1.26.0";
  src = self; # + "/src";
  subPackages = [ "cmd/telegraf" ];
  doCheck = false;
  # vendorSha256 should be set to null if dependencies are vendored. If the dependencies aren't
  # vendored, vendorSha256 must be set to a hash of the content of all dependencies. This hash can
  # be found by setting
  # vendorSha256 = lib.fakeSha256;
  # and then running flox build. The build will fail but output the expected sha, which can then be
  # added here.
  vendorSha256 = "sha256-t7FwQESwdpNDWA7XRI3Gh/ylmkyvs2oT8n1is2iGwRo=";
  meta.description = "telegraf";
}

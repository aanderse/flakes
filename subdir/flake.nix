{
#  inputs.flake-compat = {
#    url = "github:edolstra/flake-compat";
#    flake = false;
#  };

  outputs = { self }: {
    self-as-an-output = self;
  };
}

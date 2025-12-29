{pkgs, ...}: {
   services.xserver.windowManager.dwm.enable = true;

   services.xserver.windowManager.dwm.package = pkgs.dwm.overrideAttrs {
      src = ./dwm;
   };

   environment.systemPackages = with pkgs; [
  (st.overrideAttrs (oldAttrs: rec {
    configFile = writeText "config.def.h" (builtins.readFile ./st-config.h);

	postPatch = "${oldAttrs.postPatch}\n cp ${configFile} config.def.h";
  }))
];
}

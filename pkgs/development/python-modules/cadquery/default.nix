{
  lib,
  python3Packages,
  fetchPypi,
}:

python3Packages.buildPythonPackage rec {
  pname = "cadquery";
  version = "2.4.0";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1rxkgzphpjb74yqcfwp914qafdswk2msry5h7aa50bhg0q1f7s1q";
  };

  meta = with lib; {
    description = "CadQuery is a parametric  scripting language for creating and traversing CAD models";
    homepage = "https://github.com/CadQuery/cadquery";
    license = licenses.asl20;
    maintainers = with maintainers; [ lasseheia ];
  };
}

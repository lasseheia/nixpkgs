{
  lib,
  python3Packages,
  fetchFromGitHub,
}:

python3Packages.buildPythonApplication rec {
  pname = "cq-editor";
  version = "0.2";

  src = fetchFromGitHub {
    owner = "CadQuery";
    repo = "CQ-editor";
    rev = version;
    sha256 = "054k0573iyvhx9k3kwik3q3gkdx2i958d3x11yzx9ar9999ay2bd";
  };

  propagatedBuildInputs = with python3Packages; [
    cadquery
    pyqt5
  ];

  meta = with lib; {
    description = "CadQuery GUI editor based on PyQT";
    homepage = "https://github.com/CadQuery/CQ-editor";
    license = licenses.asl20;
    maintainers = with maintainers; [ lasseheia ];
  };
}

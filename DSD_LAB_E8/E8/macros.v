`define size_spec   [15: 0]
`define Re(x)       x[15:8]
`define Im(x)       x[7:0]
`define signedRe(x)      $signed(`Re(x))
`define signedIm(x)      $signed(`Im(x))
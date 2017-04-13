BT2 Pmod Example
=====================

About
-----
The project aims to set an simple example of using the Digilent BT2 Pmod on a Digilent Nexys 4 Video Board. It has 

Usage
-----
Follow documentation under 'docs' folder to understand purpose of 'src' files

Respository Structure
---------------------

| Directory           | Description                                                |
|-------------------- |------------------------------------------------------------|
| `docs/`             | Document containing guide on implementing BT2 Pmod functionality in your own design plus ILA debugging      |
| `src/`              | All files related to project implementation including verify.rb file to verify ILA dump |
| `src/bt_test_proj/`          | Vivado project and associated files |
| `src/bt_test_proj/bt_test_proj.sdk` | Contains SDK project with code intended for microblaze processor   |

Authors
-------
- Shariq Khalil Ahmed

Acknowledgements
----------------
The design employs use of diligent board and Pmod along with use of Xilinx IPs in Xilinx software
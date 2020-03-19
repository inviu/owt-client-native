set current_path=%cd%

:: release | debug
set scheme=debug
set openssl_root_dir=%current_path%\openssl\%scheme%
set msdk_root="C:\Program Files (x86)\IntelSWTools\Intel(R) Media SDK 2019 R1\Software Development Kit"
set output_path=".\out"

python scripts\build-win.py --gn_gen --sdk --ssl_root  %openssl_root_dir%  --msdk_root %msdk_root%   --output_path %output_path% --arch x64 --scheme %scheme%
echo off

rem �J�����p�X���[�h
set password="123456"

rem ���͌��t�H���_
mkdir input
rem �o�͐�t�H���_
mkdir output

cd input

rem �y�@�z�g���q��pdf�̃t�@�C����S�����[�v
for %%F in (*.pdf) do (

  rem �y�A�z�p�X���[�h����
  pdftk %%F input_pw %password% output ..\output\%%F

  rem �y�����z�p�X���[�h�ݒ�
  rem pdftk %%F output pass%%F user_pw %password%
)

cd ..

echo on

pause

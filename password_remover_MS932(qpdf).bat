rem echo off

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
  ..\qpdf\bin\qpdf --password=%password% --decrypt %%F ..\output\%%F

  rem �y�����z�p�X���[�h�ݒ�
  rem ..\qpdf\bin\qpdf --encrypt %password% %password% 40 -- %%F ..\output\%%F
)

cd ..

echo on

pause

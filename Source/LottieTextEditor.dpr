{******************************************************************************}
{                                                                              }
{       LottieTextEditor: Advanced Editor for Lottie files                     }
{                                                                              }
{       Copyright (c) 2022-2023 (Ethea S.r.l.)                                 }
{       Author: Carlo Barazzetta                                               }
{                                                                              }
{       https://github.com/EtheaDev/SKIAShellExtensions                        }
{                                                                              }
{******************************************************************************}
{                                                                              }
{  Licensed under the Apache License, Version 2.0 (the "License");             }
{  you may not use this file except in compliance with the License.            }
{  You may obtain a copy of the License at                                     }
{                                                                              }
{      http://www.apache.org/licenses/LICENSE-2.0                              }
{                                                                              }
{  Unless required by applicable law or agreed to in writing, software         }
{  distributed under the License is distributed on an "AS IS" BASIS,           }
{  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    }
{  See the License for the specific language governing permissions and         }
{  limitations under the License.                                              }
{                                                                              }
{  The Original Code is:                                                       }
{  Delphi Preview Handler  https://github.com/RRUZ/delphi-preview-handler      }
{                                                                              }
{  The Initial Developer of the Original Code is Rodrigo Ruz V.                }
{  Portions created by Rodrigo Ruz V. are Copyright 2011-2021 Rodrigo Ruz V.   }
{  All Rights Reserved.                                                        }
{******************************************************************************}
program LottieTextEditor;

uses
  System.SysUtils,
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  dlgSearchText in 'dlgSearchText.pas' {TextSearchDialog},
  dlgReplaceText in 'dlgReplaceText.pas' {TextReplaceDialog},
  EditorMainForm in 'EditorMainForm.pas' {frmMain},
  DResources in 'DResources.pas' {dmResources: TDataModule},
  DPageSetup in 'DPageSetup.pas' {PageSetupDlg},
  FTestPrintPreview in 'FTestPrintPreview.pas' {TestPrintPreviewDlg},
  FSplash in 'FSplash.pas' {SplashForm},
  dlgConfirmReplace in 'dlgConfirmReplace.pas' {ConfirmReplaceDialog},
  uAbout in 'uAbout.pas' {FrmAbout},
  uMisc in 'uMisc.pas',
  SynEditOptionsDialog in 'SynEditOptionsDialog.pas' {fmEditorOptionsDialog},
  uSettings in 'uSettings.pas',
  SettingsForm in 'SettingsForm.pas' {UserSettingsForm},
  uRegistry in 'uRegistry.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskBar := True;
  Application.Title := Title_LottieTextEditor+'- � 2022 Ethea S.r.l.';
  with TSplashForm.Create(nil) do
  Try
    Show;
    Update;
    Application.HelpFile := '';
  Application.CreateForm(TdmResources, dmResources);
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TTestPrintPreviewDlg, TestPrintPreviewDlg);
  Application.CreateForm(TPageSetupDlg, PageSetupDlg);
  Hide;
  Finally
    Free;
  End;
  frmMain.Show;
  Application.Run;
end.

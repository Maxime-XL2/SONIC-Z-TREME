○はじめに
  SSFはセガのコンシューマーマシンである「セガサターン」とその互換機をパソコン上で再現するエミュレータです。
  まだ開発途中ですがそれなりに再現されています。



○動作環境 (最低条件)
  OS         - WindowsVista/7/10 各32ビット/64ビット版
  CPU        - FPU,MMX,SSE,SSE2を搭載しているCPU
  メモリ     - 256MB以上
  ビデオ     - DirectX11に対応しているカード
               1024x512又は1024x1024のテクスチャが作成できる必要があります
  サウンド   - XAudio2に対応しているカード
               44100Hz,ステレオPCMが再生できる必要があります
  CDドライブ - MMC3に対応したドライブ

○動作環境 (推奨条件)
  CPU    - Core i7シリーズ
           Core i5シリーズ
           Core 2 Duoシリーズ
           FXシリーズ
           Phenom IIシリーズ
           Phenomシリーズ
  メモリ - 512MB以上 (デュアルチャネル以上)
  その他 - BIOS



○インストール,アンインストールについて
  インストールする必要はありません。圧縮ファイルを適当なフォルダに展開するだけです。
  アンインストールは展開フォルダを削除するだけです。
  レジストリは使用していません。



○BIOSファイルについて
  BIOSは実機から吸い出す必要があります。
  PCに接続できるプロアクションリプレイなどからアドレス00000000〜0007FFFFまでを保存します。
  ファイル名は任意です。
  BIOS無しでも動作しますが互換性は落ちます。



○バックアップRAMについて
  バックアップRAMファイル(InternalBackupRAM.bin又はExternalBackupRAM.bin)が新規に作成される場合、バックアップRAMは未初期化になっています。
  保存データ管理画面で初期化してください。
  初期化しないとゲーム内で保存ができないことがあります。
  BIOS無しの場合は初期化する必要はありません(できません)。



○設定ファイルについて
  初回起動のゲームはSSF.iniの設定を使用します。
  なので、SSF.iniはデフォルト値ということになります。
  SSF.iniはディスク無しの状態で起動した場合に設定できます。Setting.iniはプリセットです。
  一度起動したゲームの設定はSettingフォルダに保存されます(ゲーム毎に設定を保存します)。
  起動中に違うゲームと入れ替えても設定は変わりません。
  SSF.iniとSetting.iniはバージョン間の互換は保障しません。
  項目や設定値の内容が変わる場合があります。
  また、テキストファイルなので直接書き換えが可能です。
  オプションダイアログでは設定できない機能として、
   [Program1]->DisableInputを0に変更  - ウィンドウにフォーカスが無い場合でも入力を受け付ける
   [Program1]->VDP1Division           - VDP1描画スレッドの画面分割モードを設定(0で水平に、1で垂直に分割)
   [Program3]->BranchInstructionClock - 後方分岐命令に追加するクロック数を設定(若干速くなりますが互換性は落ちます)
   [Program4]->68000Typeを1に変更     - 白サターン化(初期のアウトラン,スペースハリアーなどのバグを再現します)
   [Program4]->ShowRegisterを1に変更  - SH2,68000,SCU-DSP,SCSPスロットのレジスタ値を表示
   [SSFV]                             - 録画用
   [Other]->DateFlagを0に変更         - サターンの内蔵時計を未設定にします(時刻設定画面を表示。BIOS有りのみ)
                                        BIOS無しの場合は実行しても0のままですが、1に変更しないと動かないソフトもあります
   [Input]->VariableRapid             - 各端子,ポートの可変連射幅(ランダムで＋n/60秒の可変)
  などがあります。



○操作
  キーボードかパッドが使えます。
  デフォルトは
   UP = UP Arrow
   DOWN = DOWN Arrow
   LEFT = LEFT Arrow
   RIGHT = RIGHT Arrow
   A TRG = Z key
   B TRG = X key
   C TRG = C key
   X TRG = S key
   Y TRG = D key
   Z TRG = F key
   L TRG = A key
   R TRG = G key
   START = Enter key
  以下は変更不可
   CD Open = F1 key
   CD Close = F2 key
   Hard Reset = F4 key
   連射のON/OFF切り替え = F5 key
   SoundのON/OFF切り替え = F6 key
   State Load = F7 key
   State Save = Shift + F7 key
   Snapshot = F8 key
   Sound Record = F9 key
   Video Record = Shift + F9 key
   NBG0の表示ON/OFF切り替え = NUMPAD 1 key (テンキーの1)
   NBG1の表示ON/OFF切り替え = NUMPAD 2 key (テンキーの2)
   NBG2の表示ON/OFF切り替え = NUMPAD 3 key (テンキーの3)
   NBG3の表示ON/OFF切り替え = NUMPAD 4 key (テンキーの4)
   RBG0の表示ON/OFF切り替え = NUMPAD 5 key (テンキーの5)
   RBG1の表示ON/OFF切り替え = NUMPAD 6 key (テンキーの6)
   Spriteの表示ON/OFF切り替え = NUMPAD 7 key (テンキーの7)
   画面の回転 = NUMPAD 0 key (テンキーの0)
   ABCとXYZボタンの入れ替え = NUMPAD 9 key (テンキーの9)
   ウィンドウサイズ変更 = NUMPAD + key (テンキーの+)
   Windowsマウスカーソルの表示ON/OFF = NUMPAD - key (テンキーの-)
   Window,Fullscreenの切り替え = Alt + Enter key
   終了 = ESC key
  以下は変更不可(ST-V関係)
   TEST = F11 key
   SERVICE = F12 key
   Coin1 = 5 key
   Coin2 = 6 key
   Coin3 = 7 key
   Coin4 = 8 key
   1P Start = 1 key
   2P Start = 2 key
   3P Start = 3 key
   4P Start = 4 key
   A〜N = A〜N key (Mahjong Panel)
   カン = Ctrl key (Mahjong Panel)
   ポン = Alt key (Mahjong Panel)
   チー = Space key (Mahjong Panel)
   リーチ = Shift key (Mahjong Panel)
   ロン = Z key (Mahjong Panel)
  2P側はデフォルトではキー設定されていません。キー設定を行えば使用できるようになります。
  シングルコア環境で録音,録画する時はScanline Base Timingオプションにチェックを入れないようにしてください。
  SSF起動直後にShiftを押しているとST-Vに切り替わります。
  同様にSpaceを押していると1Block Clockを一時的に60%に落とします。
  同様にCtrlを押しているとBIOSの使用ON/OFFが一時的に切り替わります。
  同様に1〜5を押していると設定が切り替わります(Setting.iniファイルの[Setting1]〜[Setting5]に対応)。



○オプションの説明

[Peripheral Tab]
・Saturn BIOS
  サターンのBIOSファイルを指定します。
  サターンの動作はBIOS無しでも可能ですが互換性は落ちます。

・ST-V BIOS
  ST-VのBIOSファイルを指定します。
  ST-Vの動作にはBIOSが必要です。

・CD Drive
  使用するCDドライブを選択します。

・Cartridge
  拡張スロットに挿すカートリッジを選択します。

・Area Code
  エリアコードを選択します。

・Data Cartridge
  有効にすると指定したファイルをABUS-CS0領域に読み込みます。
  データカートリッジを読み込むためのオプションですが動作確認はしていません。

[Screen Tab]
・Scanline
  チェックを入れるとスキャンラインが有効になります。

・Disable Fullscreen Scanline
  チェックを入れるとフル画面時はスキャンラインが無効になります。

・Auto Field Skip
  チェックを入れると自動で速度調整をします。
  フレーム単位ではなくフィールド(1/60秒)単位での調整です。
  なので、インターレースのゲームは残像が残る場合があります。
  チェックを入れても遅い場合はマシンパワーが足りていません。

・Enforce Aspect Ratio (Window)
・Enforce Aspect Ratio (Fullscreen)
  チェックを入れるとサターンのアスペクト比に強制設定します。

・Wide Screen
  チェックを入れるとワイド画面(16:9)になります。

・VSynch Wait (Window)
・VSynch Wait (Fullscreen)
  チェックを入れるとフル画面時にVSynchを待って画面を切り替えます。

・Fixed Window Resolution
  チェックを入れるとウィンドウ時の解像度の切り替えを行わなくなります。
  サターン最大解像度のウィンドウになり中央に有効画面が表示されます。

・Fixed Fullscreen Resolution
  チェックを入れるとフル画面時の解像度の切り替えを行わなくなります。

・Bilinear Filtering
  チェックを入れるとバイリニアフィルタリングが有効になります。

・Stretch Screen
  チェックを入れるとフル画面時にディスプレイの最大解像度に近いモードを選択します。

・Full Size
  チェックを入れるとフル画面時に縦横のどちらかがディスプレイの表示解像度になるまでサターンの画面を拡大させます。

・Fullscreen Display
  フル画面時の表示先ディスプレイを選択します。
  一番上がプライマリディスプレイです。

[Sound Tab]
・Linear Filtering
  チェックを入れるとリサンプリング時にPCMを線形補間します。
  線形補間は実機でも行っています。

・Double Precision
  チェックを入れるとリサンプリング処理を倍精度浮動小数点で行います。

・Mute
  チェックを入れると無音になります。
  ただし、サウンド生成処理は行います。

・Volume
  ボリュームを浮動小数点で指定します。
  XAudio2のマスターボイスのボリュームを変更しているので大きくすると音割れするかもしれません。
  設定できる数値は0.0〜4.0です。

・Buffer Size
  サウンドの展開バッファサイズを選択します。
  サイズが小さいと遅延も少なくなりますがサウンドドライバや環境によってはきちんと再生されません。
  Buffer Sizeはサウンドドライバに一度に転送するサイズです。

[Controller Tab]
・Port1
  コントロール端子1の接続を選択します。

・Player1:A〜Player1:F
  コントロール端子1に接続したマルチターミナル6の各ポートに接続する機器を選択します。
  ダイレクト接続の場合はPlayer1:Aの設定を使います。
  ST-Vの場合、1PはPlayer1:A,3PはPlayer1:B,4PはPlayer1:Cに割り当ててあります。
  Redefineボタンで各ボタンの設定ができます。Rapidは連射用です。

・Port2
  コントロール端子2の接続を選択します。

・Player2:A〜Player2:F
  コントロール端子2に接続したマルチターミナル6の各ポートに接続する機器を選択します。
  ダイレクト接続の場合はPlayer2:Aの設定を使います。
  ST-Vの場合、2PはPlayer2:Aに割り当ててあります。
  Redefineボタンで各ボタンの設定ができます。Rapidは連射用です。

[Controller (Rapid) Tab]
・各端子,ポートの連射速度を設定します。
  Allボタンは全てのボタンに適用させます。

・Enable
  チェックを入れると連射が有効になります。

[Program1 Tab]
・Flip Thread
  チェックを入れるとフリップ処理が別スレッドになります。
  テクスチャのロック,アンロックもフリップ処理スレッドで行うのでアンロックが重いドライバなどで有効です。
  環境によってはフリップがサターンの垂直同期期間後からかなりずれる可能性があります。
  VSynch Waitは無効になります。

・VDP1 Draw Thread
  チェックを入れるとVDP1の描画処理が別スレッドになります。
  マルチコア環境などで効果を発揮します。

・VDP1 Thread Numbers
  VDP1描画スレッド数を設定します。
  設定できる数値は1〜3です。

・VDP1 Thread Always Running
  チェックを入れるとVDP1描画スレッドが常に動作するようになります。
  VDP1描画スレッドの使用でスプライトがちらつく場合はチェックしてみてください。

・VDP2 Draw Thread
  チェックを入れるとVDP2の描画処理が別スレッドになります。
  マルチコア環境などで効果を発揮します。

・VDP2 Thread Numbers
  VDP2の描画スレッド数を設定します。
  最大11スレッドで処理します。
  CPU数が設定値に満たない場合は(CPU-1)数となります。
  設定できる数値は1〜11です。

・Sound Thread
  チェックを入れるとサウンド生成処理が別スレッドになります。
  マルチコア環境などで効果を発揮します。
  チェックを入れずメインスレッドで生成する場合、16サンプル単位で生成するようになります。
  別スレッドで生成する場合は(Buffer Size / 4)サンプル単位で生成します。

・CD Block Thread
  チェックを入れるとCDブロック処理が別スレッドになります。
  マルチコア環境などで効果を発揮します。
  ただし、処理タイミングがかなり変わるので互換性は落ちるかもしれません。

・CD Block No Wait
  チェックを入れるとCDブロックがウェイト無しで動作します。
  CDアクセスが速くなりますが互換性は落ちるかもしれません。

・Scanline Base Timing
  チェックを入れると走査線1ライン毎に速度調整をします。
  ムービーがコマ送りになったりストリーム再生のタイミングが合わない場合はチェックを入れてみてください。

・DSP Thread
  チェックを入れるとDSP処理が別スレッドになります。
  マルチコア環境などで効果を発揮します。
  ただし、同期に時間が掛かり逆にCPUパワーが必要になる場合があります。

・DSP Thread Always Running
  チェックを入れるとDSP処理スレッドが常に動作するようになります。

・DSP Dynamic Recompile
  チェックを入れるとSCU-DSPをダイナミックリコンパイルして実行します。

・Priority Class
  プロセスの優先度を指定します。

[Program2 Tab]
・CD Drive Read Sectors
  CDドライブから一度に読み込むCDセクタ数を設定します。
  この数値を大きくするとCDの読み込みが速くなりますがドライブによってはエラーになる場合があります。
  設定できる数値は1〜24です。

・Dot Clock
  ドットクロックを浮動小数点で指定します。
  サターンは4システムクロック(約7MHz周期)で1ドットを描画しています。
  これは何システムクロックで1ドットを描画するか指定します。
  逆に言えばこの項目でCPUの速度が調整できます。
  4ドットクロックならSH2は実機と同じ速度、2ドットクロックなら半分の速度になります。
  SH2のキャッシュをエミュレートしない場合は2.5〜3.5ドットクロックに設定して、
  キャッシュミスによるメインメモリのアクセスウェイトを擬似エミュレートします。
  メモリアクセスウェイトやキャッシュを有効にする場合は少し上げてください。
  設定できる数値は1.0〜4.0です。

・1Block Clock
  一度に実行するクロック数を設定します。
  メインループではSCU,SH2,DSP,SCSP,68000,CDブロックの順に処理しています。
  この項目は1ループで処理するクロック数を設定します。
  この数値を大きくすると若干速くなりますが互換性は落ちます。
  設定できる数値は1〜500です。

・Check SlaveSH2 Idle Loop
  チェックを入れるとスレーブSH2のアイドルループチェックが有効になります。
  アイドルループ中と判断した場合はスレーブSH2の処理を行いません。
  ソフトによっては若干速くなりますが互換性は落ちます。

・SlaveSH2 Speed
  スレーブSH2の速度をパーセントで設定します。
  マスタSH2の何パーセントの速度でスレーブSH2を動かすかを設定します。
  SSFはマスタSH2とスレーブSH2のバスアービトレーションをエミュレートしていませんのでこの項目によって擬似エミュレートします。
  設定できる数値は1〜100です。

・SH2 Recompile Block Instructions
  1ブロックの最大命令数を設定します。
  SSFでは分岐命令間を1ブロックとしてリコンパイルしブロック単位で実行しています。
  分岐間(1ブロックの命令数)が長いと割り込みタイミングなどに影響してくるので長いブロックはこの最大命令数で分割します。
  設定できる数値は1〜50です。

・CD Sector Numbers Per Second
  一秒に読み込むセクタ数を設定します。
  CDブロックがウェイトありの場合のみ有効です。
  設定できる数値は150〜200です。実機は150セクタです。

・SH2 Recompile Buffer Size
  SH2リコンパイルバッファサイズをMB単位で指定します。
  この数値を大きくするとバッファのフラッシュ回数は減りますがフラッシュ処理に時間が掛かるようになります。
  設定できる数値は1〜99です。

・SH2 Recompile Block Number
  SH2リコンパイルブロック数の最大数を指定します。
  この数値を大きくするとバッファのフラッシュ回数は減りますがフラッシュ処理に時間が掛かるようになります。
  設定できる数値は10000〜99999です。

・Alternative SH2 Recompile
  チェックを入れると代替SH2リコンパイル処理が有効になります。
  簡易的な処理になるので若干速くなりますが互換性は落ちます。

・CD Task Per Second
  一秒に処理するCDタスク数を設定します。
  CDアクセスで無限ループに陥っていると思われる場合に変更してみてください。
  設定できる数値は100〜4000です。
  以前は3400くらいでしたがそんなに処理回数は必要なかったみたいです。

[Program3 Tab]
・Check Sprite Priority
  チェックを入れるとスプライトのプライオリティが全て0の場合、描画しないようにします。

・Check Cycle Pattern
  チェックを入れるとサイクルパターンを毎ライン更新します。
  ムービーがちらつく場合はチェックしてみてください。
  互換性は上がりますが少し重くなります。

・VDP2 RAM Revision Access
  チェックを入れるとサイクルパターン指定ミスによるVDP2RAMのメモリアクセス位置のずれを考慮します。
  画面にゴミが出ている、又はずれている場合はチェックしてみてください。
  互換性は上がりますが重くなります。

・VDP2 RAM Write Timing
  チェックを入れるとVDP2RAMへの書き込みをライン毎に行います。
  また、表示遅延が1フレームになります。通常は2フレームの遅延があります。
  Check Cycle Patternにチェックを入れているとパターンネームの実データの更新チェックも行います。ただし、先頭2048バイトのみです。
  メモリアクセスが増えるので重くなります。

・Buffer Size (MB)
  VDP2 RAM Write Timingのバッファサイズを指定します。
  設定できる値は24〜99です。

・Memory Access Wait (SH2 Write Buffer)
  チェックを入れるとキャッシュスルーアドレスのメモリアクセスウェイトが有効になります。
  また、SH2の1段ライトバッファも有効になります。
  メモリアクセスウェイトを入れないとタイミングがずれて正常に動作しないソフトがあります。
  メモリアクセスウェイトを有効にする場合はドットクロックを高めに設定してください。

・SH2 Cache
  チェックを入れるとSH2のキャッシュが有効になります。
  メモリアクセスウェイトも有効になります。
  キャッシュを有効にする場合はドットクロックを高めに設定してください。
  非常に重い処理なので必要なソフトのみチェックを入れるようにした方が良いです。

・Enable Instruction Cache
  チェックを入れるとSH2の命令キャッシュが有効になります。
  一部のゲームはキャッシュを有効にする必要がありますが、命令はキャッシュしなくても問題ない場合があります。

・Bus Wait
  チェックを入れると各バスのウェイトが有効になります。
  また、ドットクロックが4.0,スレーブSH2速度が100%,SH2キャッシュが有効,SCU-DMA割り込み遅延が有効になります。
  実機にかなり近い処理タイミングになりますが非常に重いです。

・Bus Wait Clock
  バスウェイト有効時、更新するクロック数に加算する値です。
  大きくすると若干速くなりますがマスタSH2とスレーブSH2の同期がずれていきます。
  設定できる数値は0〜5です。

・SH2 DMA Real Transfer
  チェックを入れるとSH2-DMAが実機と同じ動作になります。
  転送時間を考慮しないと正常に動作しないソフトがあります。

・SCU DMA Delay Interrupt
  チェックを入れるとSCU-DMA割り込みを遅延させます。
  転送時間を考慮しないと正常に動作しないソフトがあります。

・CD Track/Index
  チェックを入れるとCDDAのトラック内インデックス位置が有効になります。
  一部のゲームではインデックス指定でCDDAを再生しています。

[Program4 Tab]
・CD Access LED
  チェックを入れるとCDアクセスLEDの表示をします。

・No BIOS
  チェックを入れるとサターンのBIOSを使わなくなります。
  ただし、BIOS無しでは動かないソフトがあるのでBIOSの使用を推奨します。
  バックアップライブラリは必ずフックされます。
  ST-Vの動作にはBIOSが必要です。

・Hook Backup Library
  チェックを入れるとバックアップライブラリをフックしてバックアップ容量を無制限にします。
  データはBackupフォルダ以下に保存されます。

・Enable FDD
  チェックを入れるとFDDが有効になります。
  バックアップライブラリをフックした場合に限ります。

・Mesh Translucent
  チェックを入れるとメッシュ描画のスプライトが半透明になります。
  スプライト処理が複雑になるため重いです。
  実機には無い機能なので上手く半透明化できないかもしれません。
  テクスチャ自体をメッシュにしている、又はBG面のキャラクタ自体をメッシュにしているものは半透明になりません。

・Deinterlace
  チェックを入れるとデインターレースが有効になります。
  単純に縦を2倍表示するだけでは駄目なのでかなり重いです。

・Emulate Speed
  エミュレート速度を浮動小数点で指定します。
  この数値を大きくしても速くならない場合はマシンパワーが足りていません。
  なお、Auto Field Skipのチェックを外すとウェイト無しで動作します。
  設定できる数値は0.1〜4.0です。
  エミュレート速度を変更する時はVSynch Waitにチェックを入れないようにしてください。



○フックしたバックアップファイルについて
  Backupフォルダ以下にあるファイルは先頭の16バイトがSSF用ヘッダ、以降が各ゲームの生セーブデータです。



○ST-Vについて
  プロテクト解除はしていないのでおまけ程度に考えてください。
  一応、MAMEのROMセットと互換性があります。
  ただし、拡張子を変える必要があるかもしれません。



○録画について補足
  SSFVファイルに音声データはありません。
  動画はSnapshotフォルダに音声はWaveフォルダに保存します。
  録画を開始すると自動的に録音される仕様です。
  処理落ちやフィールドスキップは考慮していません。
  コマ落ちしないようにするにはかなりのマシンスペックが必要です。
  現在、SSFVファイルはAviUtlでのみ扱えます。
  SSFV_Reader.auiをAviUtl.exeと同じフォルダにコピーしてください。



○その他
  SSFはフリーソフトウェアです。ただし著作権は放棄していません。
  不具合やSSFを使用して起きた問題に対して責任を負いません。自己責任で使用してください。




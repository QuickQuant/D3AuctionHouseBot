;
; AutoHotkey Version: 1.x
; Language:       English
; Platform:       Win9x/NT
; Author:         Jason Lademan
; Last Modified:  10/30/2012
; Script Function:
; Template script (you can customize this template by editing "ShellNew\Template.ahk" in your Windows folder)
;

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

!^K::
 ; ********defining constant variables*********
 ; this will allow us to extend this program to any resolution setting! The current setting is 1366 x 768

dropX = 386 ;   x coordinate of arrow to open stat scrolling box 1
dropY = 422 ;   
typeOffset = 22 ; the height of each choice in the drop down boxes
dropOffset = 27 ;  how much to vertically offset scroll boxes to adjust boxes 2 and 3
scrollUpY = 464 ;  scrolling up, first drop down box
scrollDownY = 645 ;  scrolling down, first drop down box
maxBuyoutX = 280 ;  X coordinate of buying out the item
maxBuyoutY = 375 ;
statOffset = 22 ;  how much to vertically offset pointer to adjust which stat the pointer is pointing to
statX = 374 ;   x coordinate of selecting a stat
statOneY = 455 ;  y coordinate of selecting the first stat
statNineY = 655 ;
valueX = 411 ;   x coordinate of changing the value of stat 1
valueY = 419 ;   
itemDropX = 446 ; x coordinate of arrow to change item type
itemDropY = 272 ;
itemSelectX = 333 ;  x coordinate of selecting an item type
itemSelectY = 303 ;
itemOffset = 32 ;  how much to vertically offset which item the pointer is pointing to when purchasing
multiPixel = 1020 ;  horizontal location of the gold pixel that shows that an item, where to click to select an item, and where to buyout
buyoutY = 624 ;  Y coordinate of buying out the item
searchX = 370 ;  X coordinate of search button
searchY = 596 ;
goldPixelY = 228 ;  color of this is 0x91610d
confirmX = 600 ;
confirmY = 555 ;
okX = 676 ;   color of this is 0x170400 when active but not highlighted
okY = 322 ;
levelSelectX = 286 ; minimum level
levelSelectY = 318 ;
itemTypeResetX = 443 ; makes sure we're starting at the top of the item type list
itemTypeResetY = 316 ;

debugSlowDelay = 150
debugDelay = 90
debugFastDelay = 20
searchDebug = 0

Sleep 2000
Loop 50000 
{
 ChangeItem(60, 2, 3050000, 1, 70, 19, 160, 33, 120) ; belt, 70 all resistance, 160 intelligence, 120 vitality
 ChangeItem(60, 2, 4050000, 1, 70, 12, 150, 33, 100) ; belt, 70 all resistance, 150 dexterity, 100 vitality
 ChangeItem(60, 2, 7050000, 1, 75, 32, 255, 33, 130) ; belt, 75 all resistance, 250 strength, 130 vitality
 ChangeItem(60, 7, 6500000, 8, 46, 4, 7, 7, 9.5) ; gloves, 46 critical hit damage, 7 attack speed, 9.5 critical hit chance
 ChangeItem(60, 7, 11500000, 8, 40, 4, 7, 7, 10) ; gloves, 40 critical hit damage, 7 attack speed, 10 critical hit chance
 ChangeItem(60, 1, 10500000, 4, 5, 8, 9, 9, 30) ; amulet, 9 critical hit chance, 5 attack speed, 30 critical hit damage
 ChangeItem(60, 11, 8000000, 8, 5, 4, 5, 9, 30) ; ring, 5 critical hit chance, 5 attack speed, 30 critical hit damage
 ChangeItem(60, 11, 4000000, 8, 5.5, 4, 9, 20, 150) ; ring, 5.5 critical hit chance, 9 attack speed, 150 life on hit
 ChangeItem(60, 11, 8500000, 8, 6, 4, 8, 29, 90) ; ring, 6 critical hit chance, 8 attack speed, 90 vitality
 ChangeItem(60, 1, 3500000, 8, 9, 4, 8, 30, 100) ; amulet, 9 critical hit chance, 8 attack speed, 100 vitality
 ChangeItem(60, 1, 10500000, 8, 9, 4, 8, 20, 250) ; amulet, 9 critical hit chance, 8 attack speed, 250 life on hit
 ChangeItem(60, 1, 7000000, 8, 10, 4, 9, 1, 50) ; amulet, 10 critical hit chance, 9 attack speed, 50 all resistance
 ChangeItem(60, 1, 10500000, 8, 10, 4, 9, 30, 50) ; amulet, 10 critical hit chance, 9 attack speed, 50 vitality
 ChangeItem(60, 11, 10500000, 8, 6, 4, 9, 29, 50) ; ring, 6 critical hit chance, 9 attack speed, 50 vitality
 ChangeItem(60, 11, 6000000, 8, 5.5, 4, 9, 29, 40) ; ring, 5.5 critical hit chance, 9 attack speed, 40 vitality
 ChangeItem(60, 11, 6500000, 8, 5.5, 4, 9, 1, 25) ; ring, 5.5 critical hit chance, 9 attack speed, 25 all resistance
 ChangeItem(60, 11, 12500000, 8, 6, 4, 9, 1, 30) ; ring, 6 critical hit chance, 9 attack speed, 30 all resistance
 ChangeItem(60, 1, 6550000, 8, 10, 4, 9, 1, 30) ; amulet, 10 critical hit chance, 9 attack speed, 30 all resistance
 ChangeItem(60, 1, 2050000, 8, 9.5, 4, 9, 0, 0) ; amulet, 9.5 critical hit chance, 9 attack speed
 ChangeItem(60, 1, 5050000, 8, 10, 4, 9, 0, 0) ; amulet, 10 critical hit chance, 9 attack speed


 ChangeItem(60, 11, 2050000, 4, 9, 8, 5.5) ;   ring, attack speed, 9, critical hit chance, 5.5
 ChangeItem(60, 11, 5050000, 4, 9, 8, 6) ;   ring, attack speed, 9, critical hit chance, 6

 ChangeItem(60, 1, 1550000, 4, 9, 8, 10) ;   amulet, attack speed, 9, critical hit chance, 10
 ChangeItem(60, 11, 3050000, 9, 40, 8, 6) ;   ring, critical hit damage 40, critical hit chance, 6
 ChangeItem(60, 11, 2550000, 4, 9, 8, 4.5, 1, 35) ;  ring, attack speed, 9, critical hit chance, 4.5, all resistance, 35
 ChangeItem(60, 11, 7050000, 4, 9, 8, 4.5, 9, 20) ;  ring, attack speed, 9, critical hit chance, 4.5, critical hit damage, 20
 ChangeItem(60, 11, 6050000, 4, 9, 8, 5, 11, 80) ;  ring, attack speed, 9, critical hit chance, 4.5, dexterity, 80
 ChangeItem(60, 1, 3050000, 4, 9, 8, 8.5, 11, 80) ;   amulet, attack speed, 9, critical hit chance, 9, dexterity, 80

 
}
ChangeItem(LevelMin, ItemType, Buyout, Stat1 = 0, Value1 = 0, Stat2 = 0, Value2 = 0, Stat3 = 0, Value3 = 0)
{
 global
 SetDefaultMouseSpeed, 50
 GetKeyState, state, LShift ;
 if state = D
  Exit
 if (ItemType == 1 OR ItemType == 2 OR ItemType == 4)
  scrollStatX = 476 ;  x coordinate of scroll arrows, same for up and down
 else if (ItemType == 3 OR ItemType == 7 OR ItemType == 9 OR ItemType == 12)
  scrollStatX = 431 ;
 else if (ItemType == 5)
  scrollStatX = 482 ;
 else if (ItemType == 8 OR ItemType == 0)
  scrollStatX = 529 ;
 else if (ItemType == 11)
  scrollStatX = 427 ;
 Click %levelSelectX%, %levelSelectY%
 Sleep %debugDelay%
 Send {Del 3}
 Sleep %debugDelay%
 Send %LevelMin%
 Sleep %debugDelay%
 Click %maxBuyoutX%, %maxBuyoutY%
 Sleep %debugDelay%
 Send {Del 12}
 Sleep %debugDelay%
 Send %Buyout%
 Sleep %debugDelay%
 Click %itemDropX%, %itemDropY%
 Sleep %debugDelay%
 Click %itemTypeResetX%, %itemTypeResetY%
 Sleep %debugDelay%
 tempItemSelectY = %ItemSelectY%
 while ItemType>0
 {
  tempItemSelectY += %typeOffset%
  ItemType--
 }
 Click %itemSelectX%, %tempItemSelectY%
 Sleep %debugDelay%
 tempDropY = %dropY%
 tempStatY = %statOneY%
 tempScrollUpY = %scrollUpY%
 tempScrollDownY = %scrollDownY%
 loop 3
 {
  Click %dropX%, %tempDropY%
 Sleep %debugDelay%
  Click %scrollStatX%, %tempScrollUpY%, 55
  Click %scrollStatX%, %tempScrollUpY%, 55
 Sleep %debugDelay%
  Click %statX%, %tempStatY%
 Sleep %debugDelay%
  tempDropY += %dropOffset%
  tempStatY += %dropOffset%
  tempScrollUpY += %dropOffset%
  tempScrollDownY += %dropOffset%
 }
 GetKeyState, state, LShift ;
 if state = D
  Exit
 ; now all of the stats are cleared. The values aren't cleared but thats ok.
 tempDropY = %dropY%
 tempStatY = %statOneY%
 tempScrollUpY = %scrollUpY%
 tempScrollDownY = %scrollDownY%
 tempValueY = %valueY%
 if (Stat3>Stat2)
  Stat3--
 if (Stat3>=Stat1)
  Stat3--
 if (Stat2>Stat1)
  Stat2--
 ; The previous few lines deal with the fact that the selected stats are removed from the list.
 tempStatNineY = %statNineY%
 if Stat1 != 0
 {
  Sleep %debugDelay%
  Click %dropX%, %tempDropY%
  if Stat1>9
  {
   while Stat1>9
   {
    Sleep %debugFastDelay%
    Click %scrollStatX%, %tempScrollDownY%
    Stat1--
   }
   tempStatY = %tempStatNineY%
   Sleep %debugDelay%
  }
  else
  {
   while Stat1>0
   {
    Sleep %debugFastDelay%
    tempStatY += %typeOffset%
    Stat1--
   }
  }
  Click %statX%, %tempStatY%
  Sleep %debugDelay%
  Click %ValueX%, %tempValueY%
  Send {Del 6}
  Send %Value1%  
 }
 tempDropY = %dropY%
 tempStatY = %statOneY%
 tempScrollUpY = %scrollUpY%
 tempScrollDownY = %scrollDownY%
 tempValueY = %valueY%

 tempDropY += %dropOffset%
 tempStatY += %dropOffset%
 tempScrollUpY += %dropOffset%
 tempScrollDownY += %dropOffset%
 tempValueY += %dropOffset%
 tempStatNineY += %dropOffset%

 if Stat2 != 0
 {
  Sleep %debugDelay%
  Click %dropX%, %tempDropY%
  if Stat2>9
  {
   while Stat2>9
   {
    Sleep %debugFastDelay%
    Click %scrollStatX%, %tempScrollDownY%
    Stat2--
   }
   tempStatY = %tempStatNineY%
   Sleep %debugDelay%
  }
  else
  {
   while Stat2>0
   {
    Sleep %debugFastDelay%
    tempStatY += %typeOffset%
    Stat2--
   }
  }
  Click %statX%, %tempStatY%
  Sleep %debugDelay%
  Click %ValueX%, %tempValueY%
  Send {Del 6}
  Send %Value2%  
 }
 tempStatNineY = %statNineY%
 tempDropY = %dropY%
 tempStatY = %statOneY%
 tempScrollUpY = %scrollUpY%
 tempScrollDownY = %scrollDownY%
 tempValueY = %valueY%

 tempDropY += %dropOffset%
 tempStatY += %dropOffset%
 tempScrollUpY += %dropOffset%
 tempScrollDownY += %dropOffset%
 tempValueY += %dropOffset%
 tempStatNineY += %dropOffset%

 tempDropY += %dropOffset%
 tempStatY += %dropOffset%
 tempScrollUpY += %dropOffset%
 tempScrollDownY += %dropOffset%
 tempValueY += %dropOffset%
 tempStatNineY += %dropOffset%

 if Stat3 != 0
 {
  Sleep %debugDelay%
  Click %dropX%, %tempDropY%
  if Stat3>9
  {
   while Stat3>9
   {
    Sleep %debugFastDelay%
    Click %scrollStatX%, %tempScrollDownY%
    Stat3--
   }
   tempStatY = %tempStatNineY%
   Sleep %debugDelay%
  }
  else
  {
   while Stat3>0
   {
    Sleep %debugFastDelay%
    tempStatY += %typeOffset%
    Stat3--
   }
  }
  Click %statX%, %tempStatY%
  Sleep %debugDelay%
  Click %ValueX%, %tempValueY%
  Send {Del 6}
  Send %Value3%  
 }
MouseMove %searchX%, %searchY%
 if (searchDebug == 1)
  KeyWait RShift, D
 if (searchDebug == 0)
 {
  SearchIt()
  if(buycheck == 1)
  {
   aComma := ", "
   FileAppend, ChangeItem(, C:\diabloresults\results.txt
   FileAppend, %LevelMin%, C:\diabloresults\results.txt
   FileAppend, %aComma%, C:\diabloresults\results.txt
   FileAppend, %ItemType% , C:\diabloresults\results.txt
   FileAppend, %aComma%, C:\diabloresults\results.txt
   FileAppend, %Buyout% , C:\diabloresults\results.txt
   FileAppend, %aComma%, C:\diabloresults\results.txt
   FileAppend, %Stat1% , C:\diabloresults\results.txt
   FileAppend, %aComma%, C:\diabloresults\results.txt
   FileAppend, %Value1% , C:\diabloresults\results.txt
   FileAppend, %aComma%, C:\diabloresults\results.txt
   FileAppend, %Stat2% , C:\diabloresults\results.txt
   FileAppend, %aComma%, C:\diabloresults\results.txt
   FileAppend, %Value2% , C:\diabloresults\results.txt
   FileAppend, %aComma%, C:\diabloresults\results.txt
   FileAppend, %Stat3% , C:\diabloresults\results.txt
   FileAppend, %aComma%, C:\diabloresults\results.txt
   FileAppend, %Value3% , C:\diabloresults\results.txt
   FileAppend, ) `n, C:\diabloresults\results.txt
  }
  buycheck=0
 } 
}
SearchIt()
{
 global
 Click %searchX%, %searchY% ;
 Sleep, 100
 PixelGetColor,delayOrNot,%searchX%,%searchY%,RGB
 while delayOrNot != 0x260400 ; waits a max of 25 seconds
 {
  PixelGetColor,delayOrNot,%searchX%,%searchY%,RGB
  Sleep, 100
  if a_index > 252
   break
 }
 Sleep, 110
 ypixel= %goldPixelY% ; temp variable because we want to overwrite it later
 Loop 11 ; 
 {
   GetKeyState, state, LShift ;
   if state = D
    Exit
  MouseMove, %multiPixel%, %ypixel%
  PixelGetColor,thiscolor,%multiPixel%,%ypixel%,RGB
  if (thiscolor = 0x91610d)
  {
   Click
   Click %multiPixel%, %buyoutY% ; 
   Sleep, 80
   Click %confirmX%, %confirmY% ;
   Sleep, 200
   Click %okX%, %okY%
   PixelGetColor,delayOrNot,%searchX%,%searchY%,RGB
   while delayOrNot != 0x260400 ; waits a max of 25 seconds
   {
    PixelGetColor,delayOrNot,%searchX%,%searchY%,RGB
    Sleep, 100
    Click %okX%, %okY%
    if a_index > 252
     break
   }
  buyCheck=1
  }
  else ; when an item is bought, it is removed from the list, all items shift up one
  {
   ypixel+= %itemOffset%
  }  
 }
}?
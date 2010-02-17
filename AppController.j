/*
 * AppController.j
 * PopUpButtonPerformanceTest
 *
 * Created by You on February 17, 2010.
 * Copyright 2010, Your Company All rights reserved.
 */

@import <Foundation/CPObject.j>

TEST_ARRAY1 = [CPArray arrayWithObjects:"01 al-faatiHah", "02 al-baqarah", "03 aali Imraan","04 an-nisaa'","05 al-maaidah","06 al-anAam", "07 al-aA'raaf","08 al-anfaal","09 at-tawbah","10 yoonus","11 hood","12 yoosuf","13 ar-raA'd","14 ibraaheem","15 al-Hijr","16 an-naHl","17 banee israaeel","18 al-kahf","19 maryam","20 Taa haa","21 al-ambiyaa'","22 al-Hajj","23 al-mu'minoon","24 an-noor","25 al-furqaan","26 ash-shuAraa'","27 an-naml","28 al-qaSaS","29 al-Ankaboot","30 ar-room", "31 luqmaan","32 as-sajdah","33 al-aHzaab","34 sabaa","35 faaTir","36 yaa seen","37 aS-Saaffaati","38 Saad","39 az-zumar","40 al-mu'min","41 Haa meem as-sajdah", "42 ash-shooraa", "43 az-zukhruf", "44 ad-dukhaan","45 al-jaathiya","46 al-aHqaaf","47 muHammad","48 al-fat'H", "49 al-Hujuraat", "50 Qaaf", "51 aTHTHaariyaat", "52 aT-Toor", "53 an-najm", "54 al-qamar", "55 ar-raHmaan", "56 al-waaqiAh", "57 al-Hadeed", "58 al-mujaadilah", "59 al-Hashr", "60 al-mumtaHinah", "61 aS-Saf", "62 al-jumuAh", "63 al-munaafiqoon", "64 at-taghaabun", "65 aT-Talaaq","66 at-taHreem","67 al-mulk", "68 al-Qalam","69 al-Haaqqah","70 al-maAarij","71 nooH", "72 al-jinn","73 al-muzzammil","74 al-muddaththir","75 al-qiyaamah","76 ad-dahr","77 al-mursalaat","78 anabaa","79 an-naaziAati","80 Abasa","81 at-takweer","82 al-infiTaar","83 al-muTaffifeen","84 al-inshiqaaq","85 al-burooj","86 aT-Taariq","87 al-aA'laa","88 al-ghaashiyah","89 al-fajr","90 al-balad","91 ash-shams","92 al-layl","93 aDDuHaa","94 al-inshiraaH","95 at-teen", "96 al-Alaq","97 al-qadr","98 al-bayyinah","99 az-zilzaal","100 al-Aadiyaat","101 al-qaariAh", "102 at-takaathur", "103 al-ASr", "104 al-humazah", "105 al-feel","106 quraysh","107 al-maaOon","108 al-kawthar","109 al-kaafiroon","110 an-naSr","111 al-lahab","112 al-ikhlaaS","113 al-falaq","114 an-naas"];
TEST_ARRAY2 = [CPArray arrayWithObjects:"51 aTHTHaariyaat", "52 aT-Toor", "53 an-najm", "54 al-qamar", "55 ar-raHmaan", "56 al-waaqiAh", "57 al-Hadeed", "58 al-mujaadilah", "59 al-Hashr", "60 al-mumtaHinah", "61 aS-Saf", "62 al-jumuAh", "63 al-munaafiqoon", "64 at-taghaabun", "65 aT-Talaaq","66 at-taHreem","67 al-mulk", "68 al-Qalam","69 al-Haaqqah","70 al-maAarij","71 nooH", "72 al-jinn","73 al-muzzammil","74 al-muddaththir","75 al-qiyaamah","76 ad-dahr","77 al-mursalaat","78 anabaa","79 an-naaziAati","80 Abasa","81 at-takweer","82 al-infiTaar","83 al-muTaffifeen","84 al-inshiqaaq","85 al-burooj","86 aT-Taariq","87 al-aA'laa","88 al-ghaashiyah","89 al-fajr","90 al-balad","91 ash-shams","92 al-layl","93 aDDuHaa","94 al-inshiraaH","95 at-teen", "96 al-Alaq","97 al-qadr","98 al-bayyinah","99 az-zilzaal","100 al-Aadiyaat","101 al-qaariAh", "102 at-takaathur", "103 al-ASr", "104 al-humazah", "105 al-feel","106 quraysh","107 al-maaOon","108 al-kawthar","109 al-kaafiroon","110 an-naSr","111 al-lahab","112 al-ikhlaaS","113 al-falaq","114 an-naas"];

@implementation AppController : CPObject
{
    @outlet CPWindow    theWindow; //this "outlet" is connected automatically by the Cib

    @outlet CPPopUpButton testButton;
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
    [self populateButton:nil];
    // This is called when the application is done loading.
}

- (void)awakeFromCib
{
    // This is called when the cib is done loading.
    // You can implement this method on any object instantiated from a Cib.
    // It's a useful hook for setting up current UI values, and other things. 
}

- (@action)populateButton:(id)sender
{debugger;
    if ([testButton numberOfItems] == 114)
    {
        [testButton removeAllItems];
        [testButton addItemsWithTitles:TEST_ARRAY2];
    }
    else
    {
        [testButton removeAllItems];
        [testButton addItemsWithTitles:TEST_ARRAY1];
    }
}

- (@action)selectItemAtFirstIndex:(id)sender
{
    [testButton selectItemAtIndex:0];
}

@end

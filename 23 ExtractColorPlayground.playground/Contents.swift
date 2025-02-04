
import UIKit
var htmlString = """
 <tr>
                        <td style="background: #800000;">&nbsp;</td>
                        <td>maroon</td>
                        <td>#800000</td>
                        <td>(128,0,0)</td>
                    </tr>
                    <tr>
                        <td style="background: #8B0000;">&nbsp;</td>
                        <td>dark red</td>
                        <td>#8B0000</td>
                        <td>(139,0,0)</td>
                    </tr>
                    <tr>
                        <td style="background: #A52A2A;">&nbsp;</td>
                        <td>brown</td>
                        <td>#A52A2A</td>
                        <td>(165,42,42)</td>
                    </tr>
                    <tr>
                        <td style="background: #B22222;">&nbsp;</td>
                        <td>firebrick</td>
                        <td>#B22222</td>
                        <td>(178,34,34)</td>
                    </tr>
                    <tr>
                        <td style="background: #DC143C;">&nbsp;</td>
                        <td>crimson</td>
                        <td>#DC143C</td>
                        <td>(220,20,60)</td>
                    </tr>
                    <tr>
                        <td style="background: #FF0000;">&nbsp;</td>
                        <td>red</td>
                        <td>#FF0000</td>
                        <td>(255,0,0)</td>
                    </tr>
                    <tr>
                        <td style="background: #FF6347;">&nbsp;</td>
                        <td>tomato</td>
                        <td>#FF6347</td>
                        <td>(255,99,71)</td>
                    </tr>
                    <tr>
                        <td style="background: #FF7F50;">&nbsp;</td>
                        <td>coral</td>
                        <td>#FF7F50</td>
                        <td>(255,127,80)</td>
                    </tr>
                    <tr>
                        <td style="background: #CD5C5C;">&nbsp;</td>
                        <td>indian red</td>
                        <td>#CD5C5C</td>
                        <td>(205,92,92)</td>
                    </tr>
                    <tr>
                        <td style="background: #F08080;">&nbsp;</td>
                        <td>light coral</td>
                        <td>#F08080</td>
                        <td>(240,128,128)</td>
                    </tr>
                    <tr>
                        <td style="background: #E9967A;">&nbsp;</td>
                        <td>dark salmon</td>
                        <td>#E9967A</td>
                        <td>(233,150,122)</td>
                    </tr>
                    <tr>
                        <td style="background: #FA8072;">&nbsp;</td>
                        <td>salmon</td>
                        <td>#FA8072</td>
                        <td>(250,128,114)</td>
                    </tr>
                    <tr>
                        <td style="background: #FFA07A;">&nbsp;</td>
                        <td>light salmon</td>
                        <td>#FFA07A</td>
                        <td>(255,160,122)</td>
                    </tr>
                    <tr>
                        <td style="background: #FF4500;">&nbsp;</td>
                        <td>orange red</td>
                        <td>#FF4500</td>
                        <td>(255,69,0)</td>
                    </tr>
                    <tr>
                        <td style="background: #FF8C00;">&nbsp;</td>
                        <td>dark orange</td>
                        <td>#FF8C00</td>
                        <td>(255,140,0)</td>
                    </tr>
                    <tr>
                        <td style="background: #FFA500;">&nbsp;</td>
                        <td>orange</td>
                        <td>#FFA500</td>
                        <td>(255,165,0)</td>
                    </tr>
                    <tr>
                        <td style="background: #FFD700;">&nbsp;</td>
                        <td>gold</td>
                        <td>#FFD700</td>
                        <td>(255,215,0)</td>
                    </tr>
                    <tr>
                        <td style="background: #B8860B;">&nbsp;</td>
                        <td>dark golden rod</td>
                        <td>#B8860B</td>
                        <td>(184,134,11)</td>
                    </tr>
                    <tr>
                        <td style="background: #DAA520;">&nbsp;</td>
                        <td>golden rod</td>
                        <td>#DAA520</td>
                        <td>(218,165,32)</td>
                    </tr>
                    <tr>
                        <td style="background: #EEE8AA;">&nbsp;</td>
                        <td>pale golden rod</td>
                        <td>#EEE8AA</td>
                        <td>(238,232,170)</td>
                    </tr>
                    <tr>
                        <td style="background: #BDB76B;">&nbsp;</td>
                        <td>dark khaki</td>
                        <td>#BDB76B</td>
                        <td>(189,183,107)</td>
                    </tr>
                    <tr>
                        <td style="background: #F0E68C;">&nbsp;</td>
                        <td>khaki</td>
                        <td>#F0E68C</td>
                        <td>(240,230,140)</td>
                    </tr>
                    <tr>
                        <td style="background: #808000;">&nbsp;</td>
                        <td>olive</td>
                        <td>#808000</td>
                        <td>(128,128,0)</td>
                    </tr>
                    <tr>
                        <td style="background: #FFFF00;">&nbsp;</td>
                        <td>yellow</td>
                        <td>#FFFF00</td>
                        <td>(255,255,0)</td>
                    </tr>
                    <tr>
                        <td style="background: #9ACD32;">&nbsp;</td>
                        <td>yellow green</td>
                        <td>#9ACD32</td>
                        <td>(154,205,50)</td>
                    </tr>
                    <tr>
                        <td style="background: #556B2F;">&nbsp;</td>
                        <td>dark olive green</td>
                        <td>#556B2F</td>
                        <td>(85,107,47)</td>
                    </tr>
                    <tr>
                        <td style="background: #6B8E23;">&nbsp;</td>
                        <td>olive drab</td>
                        <td>#6B8E23</td>
                        <td>(107,142,35)</td>
                    </tr>
                    <tr>
                        <td style="background: #7CFC00;">&nbsp;</td>
                        <td>lawn green</td>
                        <td>#7CFC00</td>
                        <td>(124,252,0)</td>
                    </tr>
                    <tr>
                        <td style="background: #7FFF00;">&nbsp;</td>
                        <td>chartreuse</td>
                        <td>#7FFF00</td>
                        <td>(127,255,0)</td>
                    </tr>
                    <tr>
                        <td style="background: #ADFF2F;">&nbsp;</td>
                        <td>green yellow</td>
                        <td>#ADFF2F</td>
                        <td>(173,255,47)</td>
                    </tr>
                    <tr>
                        <td style="background: #006400;">&nbsp;</td>
                        <td>dark green</td>
                        <td>#006400</td>
                        <td>(0,100,0)</td>
                    </tr>
                    <tr>
                        <td style="background: #008000;">&nbsp;</td>
                        <td>green</td>
                        <td>#008000</td>
                        <td>(0,128,0)</td>
                    </tr>
                    <tr>
                        <td style="background: #228B22;">&nbsp;</td>
                        <td>forest green</td>
                        <td>#228B22</td>
                        <td>(34,139,34)</td>
                    </tr>
                    <tr>
                        <td style="background: #00FF00;">&nbsp;</td>
                        <td>lime</td>
                        <td>#00FF00</td>
                        <td>(0,255,0)</td>
                    </tr>
                    <tr>
                        <td style="background: #32CD32;">&nbsp;</td>
                        <td>lime green</td>
                        <td>#32CD32</td>
                        <td>(50,205,50)</td>
                    </tr>
                    <tr>
                        <td style="background: #90EE90;">&nbsp;</td>
                        <td>light green</td>
                        <td>#90EE90</td>
                        <td>(144,238,144)</td>
                    </tr>
                    <tr>
                        <td style="background: #98FB98;">&nbsp;</td>
                        <td>pale green</td>
                        <td>#98FB98</td>
                        <td>(152,251,152)</td>
                    </tr>
                    <tr>
                        <td style="background: #8FBC8F;">&nbsp;</td>
                        <td>dark sea green</td>
                        <td>#8FBC8F</td>
                        <td>(143,188,143)</td>
                    </tr>
                    <tr>
                        <td style="background: #00FA9A;">&nbsp;</td>
                        <td>medium spring green</td>
                        <td>#00FA9A</td>
                        <td>(0,250,154)</td>
                    </tr>
                    <tr>
                        <td style="background: #00FF7F;">&nbsp;</td>
                        <td>spring green</td>
                        <td>#00FF7F</td>
                        <td>(0,255,127)</td>
                    </tr>
                    <tr>
                        <td style="background: #2E8B57;">&nbsp;</td>
                        <td>sea green</td>
                        <td>#2E8B57</td>
                        <td>(46,139,87)</td>
                    </tr>
                    <tr>
                        <td style="background: #66CDAA;">&nbsp;</td>
                        <td>medium aqua marine</td>
                        <td>#66CDAA</td>
                        <td>(102,205,170)</td>
                    </tr>
                    <tr>
                        <td style="background: #3CB371;">&nbsp;</td>
                        <td>medium sea green</td>
                        <td>#3CB371</td>
                        <td>(60,179,113)</td>
                    </tr>
                    <tr>
                        <td style="background: #20B2AA;">&nbsp;</td>
                        <td>light sea green</td>
                        <td>#20B2AA</td>
                        <td>(32,178,170)</td>
                    </tr>
                    <tr>
                        <td style="background: #2F4F4F;">&nbsp;</td>
                        <td>dark slate gray</td>
                        <td>#2F4F4F</td>
                        <td>(47,79,79)</td>
                    </tr>
                    <tr>
                        <td style="background: #008080;">&nbsp;</td>
                        <td>teal</td>
                        <td>#008080</td>
                        <td>(0,128,128)</td>
                    </tr>
                    <tr>
                        <td style="background: #008B8B;">&nbsp;</td>
                        <td>dark cyan</td>
                        <td>#008B8B</td>
                        <td>(0,139,139)</td>
                    </tr>
                    <tr>
                        <td style="background: #00FFFF;">&nbsp;</td>
                        <td>aqua</td>
                        <td>#00FFFF</td>
                        <td>(0,255,255)</td>
                    </tr>
                    <tr>
                        <td style="background: #00FFFF;">&nbsp;</td>
                        <td>cyan</td>
                        <td>#00FFFF</td>
                        <td>(0,255,255)</td>
                    </tr>
                    <tr>
                        <td style="background: #E0FFFF;">&nbsp;</td>
                        <td>light cyan</td>
                        <td>#E0FFFF</td>
                        <td>(224,255,255)</td>
                    </tr>
                    <tr>
                        <td style="background: #00CED1;">&nbsp;</td>
                        <td>dark turquoise</td>
                        <td>#00CED1</td>
                        <td>(0,206,209)</td>
                    </tr>
                    <tr>
                        <td style="background: #40E0D0;">&nbsp;</td>
                        <td>turquoise</td>
                        <td>#40E0D0</td>
                        <td>(64,224,208)</td>
                    </tr>
                    <tr>
                        <td style="background: #48D1CC;">&nbsp;</td>
                        <td>medium turquoise</td>
                        <td>#48D1CC</td>
                        <td>(72,209,204)</td>
                    </tr>
                    <tr>
                        <td style="background: #AFEEEE;">&nbsp;</td>
                        <td>pale turquoise</td>
                        <td>#AFEEEE</td>
                        <td>(175,238,238)</td>
                    </tr>
                    <tr>
                        <td style="background: #7FFFD4;">&nbsp;</td>
                        <td>aqua marine</td>
                        <td>#7FFFD4</td>
                        <td>(127,255,212)</td>
                    </tr>
                    <tr>
                        <td style="background: #B0E0E6;">&nbsp;</td>
                        <td>powder blue</td>
                        <td>#B0E0E6</td>
                        <td>(176,224,230)</td>
                    </tr>
                    <tr>
                        <td style="background: #5F9EA0;">&nbsp;</td>
                        <td>cadet blue</td>
                        <td>#5F9EA0</td>
                        <td>(95,158,160)</td>
                    </tr>
                    <tr>
                        <td style="background: #4682B4;">&nbsp;</td>
                        <td>steel blue</td>
                        <td>#4682B4</td>
                        <td>(70,130,180)</td>
                    </tr>
                    <tr>
                        <td style="background: #6495ED;">&nbsp;</td>
                        <td>corn flower blue</td>
                        <td>#6495ED</td>
                        <td>(100,149,237)</td>
                    </tr>
                    <tr>
                        <td style="background: #00BFFF;">&nbsp;</td>
                        <td>deep sky blue</td>
                        <td>#00BFFF</td>
                        <td>(0,191,255)</td>
                    </tr>
                    <tr>
                        <td style="background: #1E90FF;">&nbsp;</td>
                        <td>dodger blue</td>
                        <td>#1E90FF</td>
                        <td>(30,144,255)</td>
                    </tr>
                    <tr>
                        <td style="background: #ADD8E6;">&nbsp;</td>
                        <td>light blue</td>
                        <td>#ADD8E6</td>
                        <td>(173,216,230)</td>
                    </tr>
                    <tr>
                        <td style="background: #87CEEB;">&nbsp;</td>
                        <td>sky blue</td>
                        <td>#87CEEB</td>
                        <td>(135,206,235)</td>
                    </tr>
                    <tr>
                        <td style="background: #87CEFA;">&nbsp;</td>
                        <td>light sky blue</td>
                        <td>#87CEFA</td>
                        <td>(135,206,250)</td>
                    </tr>
                    <tr>
                        <td style="background: #191970;">&nbsp;</td>
                        <td>midnight blue</td>
                        <td>#191970</td>
                        <td>(25,25,112)</td>
                    </tr>
                    <tr>
                        <td style="background: #000080;">&nbsp;</td>
                        <td>navy</td>
                        <td>#000080</td>
                        <td>(0,0,128)</td>
                    </tr>
                    <tr>
                        <td style="background: #00008B;">&nbsp;</td>
                        <td>dark blue</td>
                        <td>#00008B</td>
                        <td>(0,0,139)</td>
                    </tr>
                    <tr>
                        <td style="background: #0000CD;">&nbsp;</td>
                        <td>medium blue</td>
                        <td>#0000CD</td>
                        <td>(0,0,205)</td>
                    </tr>
                    <tr>
                        <td style="background: #0000FF;">&nbsp;</td>
                        <td>blue</td>
                        <td>#0000FF</td>
                        <td>(0,0,255)</td>
                    </tr>
                    <tr>
                        <td style="background: #4169E1;">&nbsp;</td>
                        <td>royal blue</td>
                        <td>#4169E1</td>
                        <td>(65,105,225)</td>
                    </tr>
                    <tr>
                        <td style="background: #8A2BE2;">&nbsp;</td>
                        <td>blue violet</td>
                        <td>#8A2BE2</td>
                        <td>(138,43,226)</td>
                    </tr>
                    <tr>
                        <td style="background: #4B0082;">&nbsp;</td>
                        <td>indigo</td>
                        <td>#4B0082</td>
                        <td>(75,0,130)</td>
                    </tr>
                    <tr>
                        <td style="background: #483D8B;">&nbsp;</td>
                        <td>dark slate blue</td>
                        <td>#483D8B</td>
                        <td>(72,61,139)</td>
                    </tr>
                    <tr>
                        <td style="background: #6A5ACD;">&nbsp;</td>
                        <td>slate blue</td>
                        <td>#6A5ACD</td>
                        <td>(106,90,205)</td>
                    </tr>
                    <tr>
                        <td style="background: #7B68EE;">&nbsp;</td>
                        <td>medium slate blue</td>
                        <td>#7B68EE</td>
                        <td>(123,104,238)</td>
                    </tr>
                    <tr>
                        <td style="background: #9370DB;">&nbsp;</td>
                        <td>medium purple</td>
                        <td>#9370DB</td>
                        <td>(147,112,219)</td>
                    </tr>
                    <tr>
                        <td style="background: #8B008B;">&nbsp;</td>
                        <td>dark magenta</td>
                        <td>#8B008B</td>
                        <td>(139,0,139)</td>
                    </tr>
                    <tr>
                        <td style="background: #9400D3;">&nbsp;</td>
                        <td>dark violet</td>
                        <td>#9400D3</td>
                        <td>(148,0,211)</td>
                    </tr>
                    <tr>
                        <td style="background: #9932CC;">&nbsp;</td>
                        <td>dark orchid</td>
                        <td>#9932CC</td>
                        <td>(153,50,204)</td>
                    </tr>
                    <tr>
                        <td style="background: #BA55D3;">&nbsp;</td>
                        <td>medium orchid</td>
                        <td>#BA55D3</td>
                        <td>(186,85,211)</td>
                    </tr>
                    <tr>
                        <td style="background: #800080;">&nbsp;</td>
                        <td>purple</td>
                        <td>#800080</td>
                        <td>(128,0,128)</td>
                    </tr>
                    <tr>
                        <td style="background: #D8BFD8;">&nbsp;</td>
                        <td>thistle</td>
                        <td>#D8BFD8</td>
                        <td>(216,191,216)</td>
                    </tr>
                    <tr>
                        <td style="background: #DDA0DD;">&nbsp;</td>
                        <td>plum</td>
                        <td>#DDA0DD</td>
                        <td>(221,160,221)</td>
                    </tr>
                    <tr>
                        <td style="background: #EE82EE;">&nbsp;</td>
                        <td>violet</td>
                        <td>#EE82EE</td>
                        <td>(238,130,238)</td>
                    </tr>
                    <tr>
                        <td style="background: #FF00FF;">&nbsp;</td>
                        <td> magenta </td>
                        <td>#FF00FF</td>
                        <td>(255,0,255)</td>
                    </tr>
                    <tr>
                        <td style="background: #DA70D6;">&nbsp;</td>
                        <td>orchid</td>
                        <td>#DA70D6</td>
                        <td>(218,112,214)</td>
                    </tr>
                    <tr>
                        <td style="background: #C71585;">&nbsp;</td>
                        <td>medium violet red</td>
                        <td>#C71585</td>
                        <td>(199,21,133)</td>
                    </tr>
                    <tr>
                        <td style="background: #DB7093;">&nbsp;</td>
                        <td>pale violet red</td>
                        <td>#DB7093</td>
                        <td>(219,112,147)</td>
                    </tr>
                    <tr>
                        <td style="background: #FF1493;">&nbsp;</td>
                        <td>deep pink</td>
                        <td>#FF1493</td>
                        <td>(255,20,147)</td>
                    </tr>
                    <tr>
                        <td style="background: #FF69B4;">&nbsp;</td>
                        <td>hot pink</td>
                        <td>#FF69B4</td>
                        <td>(255,105,180)</td>
                    </tr>
                    <tr>
                        <td style="background: #FFB6C1;">&nbsp;</td>
                        <td>light pink</td>
                        <td>#FFB6C1</td>
                        <td>(255,182,193)</td>
                    </tr>
                    <tr>
                        <td style="background: #FFC0CB;">&nbsp;</td>
                        <td>pink</td>
                        <td>#FFC0CB</td>
                        <td>(255,192,203)</td>
                    </tr>
                    <tr>
                        <td style="background: #FAEBD7;">&nbsp;</td>
                        <td>antique white</td>
                        <td>#FAEBD7</td>
                        <td>(250,235,215)</td>
                    </tr>
                    <tr>
                        <td style="background: #F5F5DC;">&nbsp;</td>
                        <td>beige</td>
                        <td>#F5F5DC</td>
                        <td>(245,245,220)</td>
                    </tr>
                    <tr>
                        <td style="background: #FFE4C4;">&nbsp;</td>
                        <td>bisque</td>
                        <td>#FFE4C4</td>
                        <td>(255,228,196)</td>
                    </tr>
                    <tr>
                        <td style="background: #FFEBCD;">&nbsp;</td>
                        <td>blanched almond</td>
                        <td>#FFEBCD</td>
                        <td>(255,235,205)</td>
                    </tr>
                    <tr>
                        <td style="background: #F5DEB3;">&nbsp;</td>
                        <td>wheat</td>
                        <td>#F5DEB3</td>
                        <td>(245,222,179)</td>
                    </tr>
                    <tr>
                        <td style="background: #FFF8DC;">&nbsp;</td>
                        <td>corn silk</td>
                        <td>#FFF8DC</td>
                        <td>(255,248,220)</td>
                    </tr>
                    <tr>
                        <td style="background: #FFFACD;">&nbsp;</td>
                        <td>lemon chiffon</td>
                        <td>#FFFACD</td>
                        <td>(255,250,205)</td>
                    </tr>
                    <tr>
                        <td style="background: #FAFAD2;">&nbsp;</td>
                        <td>light golden rod yellow</td>
                        <td>#FAFAD2</td>
                        <td>(250,250,210)</td>
                    </tr>
                    <tr>
                        <td style="background: #FFFFE0;">&nbsp;</td>
                        <td>light yellow</td>
                        <td>#FFFFE0</td>
                        <td>(255,255,224)</td>
                    </tr>
                    <tr>
                        <td style="background: #8B4513;">&nbsp;</td>
                        <td>saddle brown</td>
                        <td>#8B4513</td>
                        <td>(139,69,19)</td>
                    </tr>
                    <tr>
                        <td style="background: #A0522D;">&nbsp;</td>
                        <td>sienna</td>
                        <td>#A0522D</td>
                        <td>(160,82,45)</td>
                    </tr>
                    <tr>
                        <td style="background: #D2691E;">&nbsp;</td>
                        <td>chocolate</td>
                        <td>#D2691E</td>
                        <td>(210,105,30)</td>
                    </tr>
                    <tr>
                        <td style="background: #CD853F;">&nbsp;</td>
                        <td>peru</td>
                        <td>#CD853F</td>
                        <td>(205,133,63)</td>
                    </tr>
                    <tr>
                        <td style="background: #F4A460;">&nbsp;</td>
                        <td>sandy brown</td>
                        <td>#F4A460</td>
                        <td>(244,164,96)</td>
                    </tr>
                    <tr>
                        <td style="background: #DEB887;">&nbsp;</td>
                        <td>burly wood</td>
                        <td>#DEB887</td>
                        <td>(222,184,135)</td>
                    </tr>
                    <tr>
                        <td style="background: #D2B48C;">&nbsp;</td>
                        <td>tan</td>
                        <td>#D2B48C</td>
                        <td>(210,180,140)</td>
                    </tr>
                    <tr>
                        <td style="background: #BC8F8F;">&nbsp;</td>
                        <td>rosy brown</td>
                        <td>#BC8F8F</td>
                        <td>(188,143,143)</td>
                    </tr>
                    <tr>
                        <td style="background: #FFE4B5;">&nbsp;</td>
                        <td>moccasin</td>
                        <td>#FFE4B5</td>
                        <td>(255,228,181)</td>
                    </tr>
                    <tr>
                        <td style="background: #FFDEAD;">&nbsp;</td>
                        <td>navajo white</td>
                        <td>#FFDEAD</td>
                        <td>(255,222,173)</td>
                    </tr>
                    <tr>
                        <td style="background: #FFDAB9;">&nbsp;</td>
                        <td>peach puff</td>
                        <td>#FFDAB9</td>
                        <td>(255,218,185)</td>
                    </tr>
                    <tr>
                        <td style="background: #FFE4E1;">&nbsp;</td>
                        <td>misty rose</td>
                        <td>#FFE4E1</td>
                        <td>(255,228,225)</td>
                    </tr>
                    <tr>
                        <td style="background: #FFF0F5;">&nbsp;</td>
                        <td>lavender blush</td>
                        <td>#FFF0F5</td>
                        <td>(255,240,245)</td>
                    </tr>
                    <tr>
                        <td style="background: #FAF0E6;">&nbsp;</td>
                        <td>linen</td>
                        <td>#FAF0E6</td>
                        <td>(250,240,230)</td>
                    </tr>
                    <tr>
                        <td style="background: #FDF5E6;">&nbsp;</td>
                        <td>old lace</td>
                        <td>#FDF5E6</td>
                        <td>(253,245,230)</td>
                    </tr>
                    <tr>
                        <td style="background: #FFEFD5;">&nbsp;</td>
                        <td>papaya whip</td>
                        <td>#FFEFD5</td>
                        <td>(255,239,213)</td>
                    </tr>
                    <tr>
                        <td style="background: #FFF5EE;">&nbsp;</td>
                        <td>sea shell</td>
                        <td>#FFF5EE</td>
                        <td>(255,245,238)</td>
                    </tr>
                    <tr>
                        <td style="background: #F5FFFA;">&nbsp;</td>
                        <td>mint cream</td>
                        <td>#F5FFFA</td>
                        <td>(245,255,250)</td>
                    </tr>
                    <tr>
                        <td style="background: #708090;">&nbsp;</td>
                        <td>slate gray</td>
                        <td>#708090</td>
                        <td>(112,128,144)</td>
                    </tr>
                    <tr>
                        <td style="background: #778899;">&nbsp;</td>
                        <td>light slate gray</td>
                        <td>#778899</td>
                        <td>(119,136,153)</td>
                    </tr>
                    <tr>
                        <td style="background: #B0C4DE;">&nbsp;</td>
                        <td>light steel blue</td>
                        <td>#B0C4DE</td>
                        <td>(176,196,222)</td>
                    </tr>
                    <tr>
                        <td style="background: #E6E6FA;">&nbsp;</td>
                        <td>lavender</td>
                        <td>#E6E6FA</td>
                        <td>(230,230,250)</td>
                    </tr>
                    <tr>
                        <td style="background: #FFFAF0;">&nbsp;</td>
                        <td>floral white</td>
                        <td>#FFFAF0</td>
                        <td>(255,250,240)</td>
                    </tr>
                    <tr>
                        <td style="background: #F0F8FF;">&nbsp;</td>
                        <td>alice blue</td>
                        <td>#F0F8FF</td>
                        <td>(240,248,255)</td>
                    </tr>
                    <tr>
                        <td style="background: #F8F8FF;">&nbsp;</td>
                        <td>ghost white</td>
                        <td>#F8F8FF</td>
                        <td>(248,248,255)</td>
                    </tr>
                    <tr>
                        <td style="background: #F0FFF0;">&nbsp;</td>
                        <td>honeydew</td>
                        <td>#F0FFF0</td>
                        <td>(240,255,240)</td>
                    </tr>
                    <tr>
                        <td style="background: #FFFFF0;">&nbsp;</td>
                        <td>ivory</td>
                        <td>#FFFFF0</td>
                        <td>(255,255,240)</td>
                    </tr>
                    <tr>
                        <td style="background: #F0FFFF;">&nbsp;</td>
                        <td>azure</td>
                        <td>#F0FFFF</td>
                        <td>(240,255,255)</td>
                    </tr>
                    <tr>
                        <td style="background: #FFFAFA;">&nbsp;</td>
                        <td>snow</td>
                        <td>#FFFAFA</td>
                        <td>(255,250,250)</td>
                    </tr>
                    <tr>
                        <td style="background: #000000;">&nbsp;</td>
                        <td>black</td>
                        <td>#000000</td>
                        <td>(0,0,0)</td>
                    </tr>
                    <tr>
                        <td style="background: #696969;">&nbsp;</td>
                        <td>dim gray / dim grey</td>
                        <td>#696969</td>
                        <td>(105,105,105)</td>
                    </tr>
                    <tr>
                        <td style="background: #808080;">&nbsp;</td>
                        <td>gray / grey</td>
                        <td>#808080</td>
                        <td>(128,128,128)</td>
                    </tr>
                    <tr>
                        <td style="background: #A9A9A9;">&nbsp;</td>
                        <td>dark gray / dark grey</td>
                        <td>#A9A9A9</td>
                        <td>(169,169,169)</td>
                    </tr>
                    <tr>
                        <td style="background: #C0C0C0;">&nbsp;</td>
                        <td>silver</td>
                        <td>#C0C0C0</td>
                        <td>(192,192,192)</td>
                    </tr>
                    <tr>
                        <td style="background: #D3D3D3;">&nbsp;</td>
                        <td>light gray / light grey</td>
                        <td>#D3D3D3</td>
                        <td>(211,211,211)</td>
                    </tr>
                    <tr>
                        <td style="background: #DCDCDC;">&nbsp;</td>
                        <td>gainsboro</td>
                        <td>#DCDCDC</td>
                        <td>(220,220,220)</td>
                    </tr>
                    <tr>
                        <td style="background: #F5F5F5;">&nbsp;</td>
                        <td>white smoke</td>
                        <td>#F5F5F5</td>
                        <td>(245,245,245)</td>
                    </tr>
                    <tr>
                        <td style="background: #FFFFFF;">&nbsp;</td>
                        <td>white</td>
                        <td>#FFFFFF</td>
                        <td>(255,255,255)</td>
                    </tr>
"""
// Color( red: 119 / 255.0, green: 136 / 255.0, blue: 153 / 255.0)
func getRGBCode(line: String) -> String {
    var rgbColor = line
    // rgbColor = "<td>(255,255,255)</td>"
    
    rgbColor = removeTD(str: rgbColor)
    // rgbColor = "            (119,136,153)"
    rgbColor = rgbColor
        .replacingOccurrences(of: " ", with: "")
    // rgbColor = "(119,136,153)"
    
    rgbColor = rgbColor
        .replacingOccurrences(of: "(", with: "")
        .replacingOccurrences(of: ")", with: "")
    // rgbColor = "119,136,153"

    let theColors = rgbColor
        .components(separatedBy: ",")
    
    let red = theColors[0]  // 119
    let green = theColors[1]  // 136
    let blue = theColors[2]  // 153
//
    return "Color( red: \(red) / 255.0, green: \(green) / 255.0, blue: \(blue) / 255.0)"
}

var lines = htmlString
    .components(separatedBy: "\n")

func removeTD(str: String) -> String {
    str
        .replacingOccurrences(of: "<td>", with: "")
        .replacingOccurrences(of: "</td>", with: "")
}

extension StringProtocol {
    var firstLowercased: String {
        prefix(1).lowercased() + dropFirst()
    }
}

func removeAfterBackslash(str: String) -> String {
    let components = str
        .components(separatedBy: "/")
    
    return components[0]
}

func changeNameIfStandardColor(colorName: String) -> String {
    let listOfStandardColors = [
    "black",
    "blue",
    "brown",
    "cyan",
    "gray",
    "blue",
    "green",
    "indigo",
    "mint",
    "orange",
    "pink",
    "purple",
    "red",
    "teal",
    "white",
    "yellow"
    ]
    
    return listOfStandardColors.contains(colorName) ? colorName + "1" : colorName
}

func getColorName(line: String) -> String {
    // line = "<td>light gray / light grey</td>" --> whiteSmoke
    var result = line
    result = removeTD(str: result)
    // result = "light gray / light grey"
    result = result.capitalized
    // result = "Light Gray / Light Grey"
    result = result
        .replacingOccurrences(of: " ", with: "")
    // result = "LightGray/LightGrey"
    result = result
        .firstLowercased
    // result = "lightGray/LightGrey"
    
    result = removeAfterBackslash(str: result)
    // result = "lightGray"
    
    return changeNameIfStandardColor(colorName: result)
}

// TODO: Implement getColorNameSnakeCase - Exercise 4

func getColorNameSnakeCase(line: String) -> String {
    // line = "<td>light steel blue / light steel skyblue</td>" --> light_steel_blue
    var result = line

    
    
    return result
}



var colorSwiftCode = ""
var colorListCode = ""
for i in 0..<lines.count {
    if lines[i].contains("background") {
        let colorName = getColorName(line: lines[i + 1])
        let rgbCode = getRGBCode(line: lines[i + 3])

        let lineOfCode = "static let \(colorName) = \(rgbCode)\n"
        colorSwiftCode += lineOfCode
        colorListCode += "\t.\(colorName),\n"
    }
}

colorListCode = String(colorListCode.dropLast())

//print(colorSwiftCode)

print(colorListCode)

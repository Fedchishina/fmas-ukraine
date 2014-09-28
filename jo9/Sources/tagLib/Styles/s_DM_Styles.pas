unit s_DM_Styles;

interface

uses
  SysUtils, Classes, cxClasses, cxStyles, cxGridTableView, cxTL,
  cxGridBandedTableView;

type
  TDM_Styles = class(TDataModule)
    GridPredefined: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    cxStyle33: TcxStyle;
    cxStyle34: TcxStyle;
    cxStyle35: TcxStyle;
    cxStyle36: TcxStyle;
    cxStyle37: TcxStyle;
    cxStyle38: TcxStyle;
    cxStyle39: TcxStyle;
    cxStyle40: TcxStyle;
    cxStyle41: TcxStyle;
    cxStyle42: TcxStyle;
    cxStyle43: TcxStyle;
    cxStyle44: TcxStyle;
    cxStyle45: TcxStyle;
    cxStyle46: TcxStyle;
    cxStyle47: TcxStyle;
    cxStyle48: TcxStyle;
    cxStyle49: TcxStyle;
    cxStyle50: TcxStyle;
    cxStyle51: TcxStyle;
    cxStyle52: TcxStyle;
    cxStyle53: TcxStyle;
    cxStyle54: TcxStyle;
    cxStyle55: TcxStyle;
    cxStyle56: TcxStyle;
    cxStyle57: TcxStyle;
    cxStyle58: TcxStyle;
    cxStyle59: TcxStyle;
    cxStyle60: TcxStyle;
    cxStyle61: TcxStyle;
    cxStyle62: TcxStyle;
    cxStyle63: TcxStyle;
    cxStyle64: TcxStyle;
    cxStyle65: TcxStyle;
    cxStyle66: TcxStyle;
    cxStyle67: TcxStyle;
    cxStyle68: TcxStyle;
    cxStyle69: TcxStyle;
    cxStyle70: TcxStyle;
    cxStyle71: TcxStyle;
    cxStyle72: TcxStyle;
    cxStyle73: TcxStyle;
    cxStyle74: TcxStyle;
    cxStyle75: TcxStyle;
    cxStyle76: TcxStyle;
    cxStyle77: TcxStyle;
    cxStyle78: TcxStyle;
    cxStyle79: TcxStyle;
    cxStyle80: TcxStyle;
    cxStyle81: TcxStyle;
    cxStyle82: TcxStyle;
    cxStyle83: TcxStyle;
    cxStyle84: TcxStyle;
    cxStyle85: TcxStyle;
    cxStyle86: TcxStyle;
    cxStyle87: TcxStyle;
    cxStyle88: TcxStyle;
    cxStyle89: TcxStyle;
    cxStyle90: TcxStyle;
    cxStyle91: TcxStyle;
    cxStyle92: TcxStyle;
    cxStyle93: TcxStyle;
    cxStyle94: TcxStyle;
    cxStyle95: TcxStyle;
    cxStyle96: TcxStyle;
    cxStyle97: TcxStyle;
    cxStyle98: TcxStyle;
    cxStyle99: TcxStyle;
    cxStyle100: TcxStyle;
    cxStyle101: TcxStyle;
    cxStyle102: TcxStyle;
    cxStyle103: TcxStyle;
    cxStyle104: TcxStyle;
    cxStyle105: TcxStyle;
    cxStyle106: TcxStyle;
    cxStyle107: TcxStyle;
    cxStyle108: TcxStyle;
    cxStyle109: TcxStyle;
    cxStyle110: TcxStyle;
    cxStyle111: TcxStyle;
    cxStyle112: TcxStyle;
    cxStyle113: TcxStyle;
    cxStyle114: TcxStyle;
    cxStyle115: TcxStyle;
    cxStyle116: TcxStyle;
    cxStyle117: TcxStyle;
    cxStyle118: TcxStyle;
    cxStyle119: TcxStyle;
    cxStyle120: TcxStyle;
    cxStyle121: TcxStyle;
    cxStyle122: TcxStyle;
    cxStyle123: TcxStyle;
    cxStyle124: TcxStyle;
    cxStyle125: TcxStyle;
    cxStyle126: TcxStyle;
    cxStyle127: TcxStyle;
    cxStyle128: TcxStyle;
    cxStyle129: TcxStyle;
    cxStyle130: TcxStyle;
    cxStyle131: TcxStyle;
    cxStyle132: TcxStyle;
    cxStyle133: TcxStyle;
    cxStyle134: TcxStyle;
    cxStyle135: TcxStyle;
    cxStyle136: TcxStyle;
    cxStyle137: TcxStyle;
    cxStyle138: TcxStyle;
    cxStyle139: TcxStyle;
    cxStyle140: TcxStyle;
    cxStyle141: TcxStyle;
    cxStyle142: TcxStyle;
    cxStyle143: TcxStyle;
    cxStyle144: TcxStyle;
    cxStyle145: TcxStyle;
    cxStyle146: TcxStyle;
    cxStyle147: TcxStyle;
    cxStyle148: TcxStyle;
    cxStyle149: TcxStyle;
    cxStyle150: TcxStyle;
    cxStyle151: TcxStyle;
    cxStyle152: TcxStyle;
    cxStyle153: TcxStyle;
    cxStyle154: TcxStyle;
    cxStyle155: TcxStyle;
    cxStyle156: TcxStyle;
    cxStyle157: TcxStyle;
    cxStyle158: TcxStyle;
    cxStyle159: TcxStyle;
    cxStyle160: TcxStyle;
    cxStyle161: TcxStyle;
    cxStyle162: TcxStyle;
    cxStyle163: TcxStyle;
    cxStyle164: TcxStyle;
    cxStyle165: TcxStyle;
    cxStyle166: TcxStyle;
    cxStyle167: TcxStyle;
    cxStyle168: TcxStyle;
    cxStyle169: TcxStyle;
    cxStyle170: TcxStyle;
    cxStyle171: TcxStyle;
    cxStyle172: TcxStyle;
    cxStyle173: TcxStyle;
    cxStyle174: TcxStyle;
    cxStyle175: TcxStyle;
    cxStyle176: TcxStyle;
    cxStyle177: TcxStyle;
    cxStyle178: TcxStyle;
    cxStyle179: TcxStyle;
    cxStyle180: TcxStyle;
    cxStyle181: TcxStyle;
    cxStyle182: TcxStyle;
    cxStyle183: TcxStyle;
    cxStyle184: TcxStyle;
    cxStyle185: TcxStyle;
    cxStyle186: TcxStyle;
    cxStyle187: TcxStyle;
    cxStyle188: TcxStyle;
    cxStyle189: TcxStyle;
    cxStyle190: TcxStyle;
    cxStyle191: TcxStyle;
    cxStyle192: TcxStyle;
    cxStyle193: TcxStyle;
    cxStyle194: TcxStyle;
    cxStyle195: TcxStyle;
    cxStyle196: TcxStyle;
    cxStyle197: TcxStyle;
    cxStyle198: TcxStyle;
    cxStyle199: TcxStyle;
    cxStyle200: TcxStyle;
    cxStyle201: TcxStyle;
    cxStyle202: TcxStyle;
    cxStyle203: TcxStyle;
    cxStyle204: TcxStyle;
    cxStyle205: TcxStyle;
    cxStyle206: TcxStyle;
    cxStyle207: TcxStyle;
    cxStyle208: TcxStyle;
    cxStyle209: TcxStyle;
    cxStyle210: TcxStyle;
    cxStyle211: TcxStyle;
    cxStyle212: TcxStyle;
    cxStyle213: TcxStyle;
    cxStyle214: TcxStyle;
    cxStyle215: TcxStyle;
    cxStyle216: TcxStyle;
    cxStyle217: TcxStyle;
    cxStyle218: TcxStyle;
    cxStyle219: TcxStyle;
    cxStyle220: TcxStyle;
    cxStyle221: TcxStyle;
    cxStyle222: TcxStyle;
    cxStyle223: TcxStyle;
    cxStyle224: TcxStyle;
    cxStyle225: TcxStyle;
    cxStyle226: TcxStyle;
    cxStyle227: TcxStyle;
    cxStyle228: TcxStyle;
    cxStyle229: TcxStyle;
    cxStyle230: TcxStyle;
    cxStyle231: TcxStyle;
    cxStyle232: TcxStyle;
    cxStyle233: TcxStyle;
    cxStyle234: TcxStyle;
    cxStyle235: TcxStyle;
    cxStyle236: TcxStyle;
    cxStyle237: TcxStyle;
    cxStyle238: TcxStyle;
    cxStyle239: TcxStyle;
    cxStyle240: TcxStyle;
    cxStyle241: TcxStyle;
    cxStyle242: TcxStyle;
    cxStyle243: TcxStyle;
    cxStyle244: TcxStyle;
    cxStyle245: TcxStyle;
    cxStyle246: TcxStyle;
    cxStyle247: TcxStyle;
    cxStyle248: TcxStyle;
    cxStyle249: TcxStyle;
    cxStyle250: TcxStyle;
    cxStyle251: TcxStyle;
    cxStyle252: TcxStyle;
    cxStyle253: TcxStyle;
    cxStyle254: TcxStyle;
    cxStyle255: TcxStyle;
    cxStyle256: TcxStyle;
    cxStyle257: TcxStyle;
    cxStyle258: TcxStyle;
    cxStyle259: TcxStyle;
    cxStyle260: TcxStyle;
    cxStyle261: TcxStyle;
    cxStyle262: TcxStyle;
    cxStyle263: TcxStyle;
    cxStyle264: TcxStyle;
    cxStyle265: TcxStyle;
    cxStyle266: TcxStyle;
    cxStyle267: TcxStyle;
    cxStyle268: TcxStyle;
    cxStyle269: TcxStyle;
    cxStyle270: TcxStyle;
    cxStyle271: TcxStyle;
    cxStyle272: TcxStyle;
    cxStyle273: TcxStyle;
    cxStyle274: TcxStyle;
    cxStyle275: TcxStyle;
    cxStyle276: TcxStyle;
    cxStyle277: TcxStyle;
    cxStyle278: TcxStyle;
    cxStyle279: TcxStyle;
    cxStyle280: TcxStyle;
    cxStyle281: TcxStyle;
    cxStyle282: TcxStyle;
    cxStyle283: TcxStyle;
    cxStyle284: TcxStyle;
    cxStyle285: TcxStyle;
    cxStyle286: TcxStyle;
    cxStyle287: TcxStyle;
    cxStyle288: TcxStyle;
    cxStyle289: TcxStyle;
    cxStyle290: TcxStyle;
    cxStyle291: TcxStyle;
    cxStyle292: TcxStyle;
    cxStyle293: TcxStyle;
    cxStyle294: TcxStyle;
    cxStyle295: TcxStyle;
    cxStyle296: TcxStyle;
    cxStyle297: TcxStyle;
    cxStyle298: TcxStyle;
    cxStyle299: TcxStyle;
    cxStyle300: TcxStyle;
    cxStyle301: TcxStyle;
    cxStyle302: TcxStyle;
    cxStyle303: TcxStyle;
    cxStyle304: TcxStyle;
    cxStyle305: TcxStyle;
    cxStyle306: TcxStyle;
    cxStyle307: TcxStyle;
    cxStyle308: TcxStyle;
    cxStyle309: TcxStyle;
    cxStyle310: TcxStyle;
    cxStyle311: TcxStyle;
    cxStyle312: TcxStyle;
    cxStyle313: TcxStyle;
    cxStyle314: TcxStyle;
    cxStyle315: TcxStyle;
    cxStyle316: TcxStyle;
    cxStyle317: TcxStyle;
    cxStyle318: TcxStyle;
    cxStyle319: TcxStyle;
    cxStyle320: TcxStyle;
    cxStyle321: TcxStyle;
    cxStyle322: TcxStyle;
    cxStyle323: TcxStyle;
    cxStyle324: TcxStyle;
    cxStyle325: TcxStyle;
    cxStyle326: TcxStyle;
    cxStyle327: TcxStyle;
    cxStyle328: TcxStyle;
    cxStyle329: TcxStyle;
    cxStyle330: TcxStyle;
    cxStyle331: TcxStyle;
    cxStyle332: TcxStyle;
    cxStyle333: TcxStyle;
    cxStyle334: TcxStyle;
    cxStyle335: TcxStyle;
    cxStyle336: TcxStyle;
    cxStyle337: TcxStyle;
    cxStyle338: TcxStyle;
    cxStyle339: TcxStyle;
    cxStyle340: TcxStyle;
    cxStyle341: TcxStyle;
    cxStyle342: TcxStyle;
    cxStyle343: TcxStyle;
    cxStyle344: TcxStyle;
    cxStyle345: TcxStyle;
    cxStyle346: TcxStyle;
    cxStyle347: TcxStyle;
    cxStyle348: TcxStyle;
    cxStyle349: TcxStyle;
    cxStyle350: TcxStyle;
    cxStyle351: TcxStyle;
    cxStyle352: TcxStyle;
    cxStyle353: TcxStyle;
    cxStyle354: TcxStyle;
    cxStyle355: TcxStyle;
    cxStyle356: TcxStyle;
    cxStyle357: TcxStyle;
    cxStyle358: TcxStyle;
    cxStyle359: TcxStyle;
    cxStyle360: TcxStyle;
    cxStyle361: TcxStyle;
    cxStyle362: TcxStyle;
    cxStyle363: TcxStyle;
    cxStyle364: TcxStyle;
    cxStyle365: TcxStyle;
    cxStyle366: TcxStyle;
    cxStyle367: TcxStyle;
    cxStyle368: TcxStyle;
    cxStyle369: TcxStyle;
    cxStyle370: TcxStyle;
    cxStyle371: TcxStyle;
    cxStyle372: TcxStyle;
    cxStyle373: TcxStyle;
    cxStyle374: TcxStyle;
    cxStyle375: TcxStyle;
    cxStyle376: TcxStyle;
    cxStyle377: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetUserFormat1: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetUserFormat2: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetUserFormat3: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetUserFormat4: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetBrick: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetDesert: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetEggplant: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetLilac: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetMaple: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetMarinehighcolor: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetPlumhighcolor: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetPumpkinlarge: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetRainyDay: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetRedWhiteandBlueVGA: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetRose: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetRoselarge: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetSlate: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetSpruce: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetStormVGA: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetTealVGA: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetWheat: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetWindowsClassic: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetWindowsClassiclarge: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetWindowsStandard: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetWindowsStandardlarge: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetHighContrast1: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetHighContrast1large: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetHighContrast2: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetHighContrast2large: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetHighContrastBlack: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetHighContrastBlacklarge: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetHighContrastWhite: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetHighContrastWhitelarge: TcxGridTableViewStyleSheet;
    TreePredefined: TcxStyleRepository;
    styGroupNode: TcxStyle;
    styOptionalNode: TcxStyle;
    cxStyle406: TcxStyle;
    cxStyle407: TcxStyle;
    cxStyle408: TcxStyle;
    cxStyle409: TcxStyle;
    cxStyle410: TcxStyle;
    cxStyle411: TcxStyle;
    cxStyle412: TcxStyle;
    cxStyle413: TcxStyle;
    cxStyle414: TcxStyle;
    cxStyle415: TcxStyle;
    cxStyle416: TcxStyle;
    cxStyle417: TcxStyle;
    cxStyle418: TcxStyle;
    cxStyle419: TcxStyle;
    cxStyle420: TcxStyle;
    cxStyle421: TcxStyle;
    cxStyle422: TcxStyle;
    cxStyle423: TcxStyle;
    cxStyle424: TcxStyle;
    cxStyle425: TcxStyle;
    cxStyle426: TcxStyle;
    cxStyle427: TcxStyle;
    cxStyle428: TcxStyle;
    cxStyle429: TcxStyle;
    cxStyle430: TcxStyle;
    cxStyle431: TcxStyle;
    cxStyle432: TcxStyle;
    cxStyle433: TcxStyle;
    cxStyle434: TcxStyle;
    cxStyle435: TcxStyle;
    cxStyle436: TcxStyle;
    cxStyle437: TcxStyle;
    cxStyle438: TcxStyle;
    cxStyle439: TcxStyle;
    cxStyle440: TcxStyle;
    cxStyle441: TcxStyle;
    cxStyle442: TcxStyle;
    cxStyle443: TcxStyle;
    cxStyle444: TcxStyle;
    cxStyle445: TcxStyle;
    cxStyle446: TcxStyle;
    cxStyle447: TcxStyle;
    cxStyle448: TcxStyle;
    cxStyle449: TcxStyle;
    cxStyle450: TcxStyle;
    cxStyle451: TcxStyle;
    cxStyle452: TcxStyle;
    cxStyle453: TcxStyle;
    cxStyle454: TcxStyle;
    cxStyle455: TcxStyle;
    cxStyle456: TcxStyle;
    cxStyle457: TcxStyle;
    cxStyle458: TcxStyle;
    cxStyle459: TcxStyle;
    cxStyle460: TcxStyle;
    cxStyle461: TcxStyle;
    cxStyle462: TcxStyle;
    cxStyle463: TcxStyle;
    cxStyle464: TcxStyle;
    cxStyle465: TcxStyle;
    cxStyle466: TcxStyle;
    cxStyle467: TcxStyle;
    cxStyle468: TcxStyle;
    cxStyle469: TcxStyle;
    cxStyle470: TcxStyle;
    cxStyle471: TcxStyle;
    cxStyle472: TcxStyle;
    cxStyle473: TcxStyle;
    cxStyle474: TcxStyle;
    cxStyle475: TcxStyle;
    cxStyle476: TcxStyle;
    cxStyle477: TcxStyle;
    cxStyle478: TcxStyle;
    cxStyle479: TcxStyle;
    cxStyle480: TcxStyle;
    cxStyle481: TcxStyle;
    cxStyle482: TcxStyle;
    cxStyle483: TcxStyle;
    cxStyle484: TcxStyle;
    cxStyle485: TcxStyle;
    cxStyle486: TcxStyle;
    cxStyle487: TcxStyle;
    cxStyle488: TcxStyle;
    cxStyle489: TcxStyle;
    cxStyle490: TcxStyle;
    cxStyle491: TcxStyle;
    cxStyle492: TcxStyle;
    cxStyle493: TcxStyle;
    cxStyle494: TcxStyle;
    cxStyle495: TcxStyle;
    cxStyle496: TcxStyle;
    cxStyle497: TcxStyle;
    cxStyle498: TcxStyle;
    cxStyle499: TcxStyle;
    cxStyle500: TcxStyle;
    cxStyle501: TcxStyle;
    cxStyle502: TcxStyle;
    cxStyle503: TcxStyle;
    cxStyle504: TcxStyle;
    cxStyle505: TcxStyle;
    cxStyle506: TcxStyle;
    cxStyle507: TcxStyle;
    cxStyle508: TcxStyle;
    cxStyle509: TcxStyle;
    cxStyle510: TcxStyle;
    cxStyle511: TcxStyle;
    cxStyle512: TcxStyle;
    cxStyle513: TcxStyle;
    cxStyle514: TcxStyle;
    cxStyle515: TcxStyle;
    cxStyle516: TcxStyle;
    cxStyle517: TcxStyle;
    cxStyle518: TcxStyle;
    cxStyle519: TcxStyle;
    cxStyle520: TcxStyle;
    cxStyle521: TcxStyle;
    cxStyle522: TcxStyle;
    cxStyle523: TcxStyle;
    cxStyle524: TcxStyle;
    cxStyle525: TcxStyle;
    cxStyle526: TcxStyle;
    cxStyle527: TcxStyle;
    cxStyle528: TcxStyle;
    cxStyle529: TcxStyle;
    cxStyle530: TcxStyle;
    cxStyle531: TcxStyle;
    cxStyle532: TcxStyle;
    cxStyle533: TcxStyle;
    cxStyle534: TcxStyle;
    cxStyle535: TcxStyle;
    cxStyle536: TcxStyle;
    cxStyle537: TcxStyle;
    cxStyle538: TcxStyle;
    cxStyle539: TcxStyle;
    cxStyle540: TcxStyle;
    cxStyle541: TcxStyle;
    cxStyle542: TcxStyle;
    cxStyle543: TcxStyle;
    cxStyle544: TcxStyle;
    cxStyle545: TcxStyle;
    cxStyle546: TcxStyle;
    cxStyle547: TcxStyle;
    cxStyle548: TcxStyle;
    cxStyle549: TcxStyle;
    cxStyle550: TcxStyle;
    cxStyle551: TcxStyle;
    cxStyle552: TcxStyle;
    cxStyle553: TcxStyle;
    cxStyle554: TcxStyle;
    cxStyle555: TcxStyle;
    cxStyle556: TcxStyle;
    cxStyle557: TcxStyle;
    cxStyle558: TcxStyle;
    cxStyle559: TcxStyle;
    cxStyle560: TcxStyle;
    cxStyle561: TcxStyle;
    cxStyle562: TcxStyle;
    cxStyle563: TcxStyle;
    cxStyle564: TcxStyle;
    cxStyle565: TcxStyle;
    cxStyle566: TcxStyle;
    cxStyle567: TcxStyle;
    cxStyle568: TcxStyle;
    cxStyle569: TcxStyle;
    cxStyle570: TcxStyle;
    cxStyle571: TcxStyle;
    cxStyle572: TcxStyle;
    cxStyle573: TcxStyle;
    cxStyle574: TcxStyle;
    cxStyle575: TcxStyle;
    cxStyle576: TcxStyle;
    cxStyle577: TcxStyle;
    cxStyle578: TcxStyle;
    cxStyle579: TcxStyle;
    cxStyle580: TcxStyle;
    cxStyle581: TcxStyle;
    cxStyle582: TcxStyle;
    cxStyle583: TcxStyle;
    cxStyle584: TcxStyle;
    cxStyle585: TcxStyle;
    cxStyle586: TcxStyle;
    cxStyle587: TcxStyle;
    cxStyle588: TcxStyle;
    cxStyle589: TcxStyle;
    cxStyle590: TcxStyle;
    cxStyle591: TcxStyle;
    cxStyle592: TcxStyle;
    cxStyle593: TcxStyle;
    cxStyle594: TcxStyle;
    cxStyle595: TcxStyle;
    cxStyle596: TcxStyle;
    cxStyle597: TcxStyle;
    cxStyle598: TcxStyle;
    cxStyle599: TcxStyle;
    cxStyle600: TcxStyle;
    cxStyle601: TcxStyle;
    cxStyle602: TcxStyle;
    cxStyle603: TcxStyle;
    cxStyle604: TcxStyle;
    cxStyle605: TcxStyle;
    cxStyle606: TcxStyle;
    cxStyle607: TcxStyle;
    cxStyle608: TcxStyle;
    cxStyle609: TcxStyle;
    cxStyle610: TcxStyle;
    cxStyle611: TcxStyle;
    cxStyle612: TcxStyle;
    cxStyle613: TcxStyle;
    cxStyle614: TcxStyle;
    cxStyle615: TcxStyle;
    cxStyle616: TcxStyle;
    cxStyle617: TcxStyle;
    cxStyle618: TcxStyle;
    cxStyle619: TcxStyle;
    cxStyle620: TcxStyle;
    cxStyle621: TcxStyle;
    cxStyle622: TcxStyle;
    cxStyle623: TcxStyle;
    cxStyle624: TcxStyle;
    cxStyle625: TcxStyle;
    cxStyle626: TcxStyle;
    cxStyle627: TcxStyle;
    cxStyle628: TcxStyle;
    cxStyle629: TcxStyle;
    cxStyle630: TcxStyle;
    cxStyle631: TcxStyle;
    cxStyle632: TcxStyle;
    cxStyle633: TcxStyle;
    cxStyle634: TcxStyle;
    cxStyle635: TcxStyle;
    cxStyle636: TcxStyle;
    cxStyle637: TcxStyle;
    cxStyle638: TcxStyle;
    cxStyle639: TcxStyle;
    cxStyle640: TcxStyle;
    cxStyle641: TcxStyle;
    cxStyle642: TcxStyle;
    cxStyle643: TcxStyle;
    cxStyle644: TcxStyle;
    cxStyle645: TcxStyle;
    cxStyle646: TcxStyle;
    cxStyle647: TcxStyle;
    cxStyle648: TcxStyle;
    cxStyle649: TcxStyle;
    cxStyle650: TcxStyle;
    cxStyle651: TcxStyle;
    cxStyle652: TcxStyle;
    cxStyle653: TcxStyle;
    cxStyle654: TcxStyle;
    cxStyle655: TcxStyle;
    cxStyle656: TcxStyle;
    cxStyle657: TcxStyle;
    cxStyle658: TcxStyle;
    cxStyle659: TcxStyle;
    cxStyle660: TcxStyle;
    cxStyle661: TcxStyle;
    cxStyle662: TcxStyle;
    cxStyle663: TcxStyle;
    cxStyle664: TcxStyle;
    cxStyle665: TcxStyle;
    cxStyle666: TcxStyle;
    cxStyle667: TcxStyle;
    cxStyle668: TcxStyle;
    cxStyle669: TcxStyle;
    cxStyle670: TcxStyle;
    cxStyle671: TcxStyle;
    cxStyle672: TcxStyle;
    cxStyle673: TcxStyle;
    cxStyle674: TcxStyle;
    cxStyle675: TcxStyle;
    cxStyle676: TcxStyle;
    cxStyle677: TcxStyle;
    cxStyle678: TcxStyle;
    cxStyle679: TcxStyle;
    cxStyle680: TcxStyle;
    cxStyle681: TcxStyle;
    cxStyle682: TcxStyle;
    cxStyle683: TcxStyle;
    cxStyle684: TcxStyle;
    cxStyle685: TcxStyle;
    cxStyle686: TcxStyle;
    cxStyle687: TcxStyle;
    cxStyle688: TcxStyle;
    cxStyle689: TcxStyle;
    cxStyle690: TcxStyle;
    cxStyle691: TcxStyle;
    cxStyle692: TcxStyle;
    cxStyle693: TcxStyle;
    cxStyle694: TcxStyle;
    cxStyle695: TcxStyle;
    cxStyle696: TcxStyle;
    cxStyle697: TcxStyle;
    cxStyle698: TcxStyle;
    cxStyle699: TcxStyle;
    cxStyle700: TcxStyle;
    cxStyle701: TcxStyle;
    cxStyle702: TcxStyle;
    cxStyle703: TcxStyle;
    cxStyle704: TcxStyle;
    cxStyle705: TcxStyle;
    cxStyle706: TcxStyle;
    cxStyle707: TcxStyle;
    cxStyle708: TcxStyle;
    cxStyle709: TcxStyle;
    cxStyle710: TcxStyle;
    cxStyle711: TcxStyle;
    cxStyle712: TcxStyle;
    cxStyle713: TcxStyle;
    cxStyle714: TcxStyle;
    cxStyle715: TcxStyle;
    cxStyle716: TcxStyle;
    cxStyle717: TcxStyle;
    cxStyle718: TcxStyle;
    cxStyle719: TcxStyle;
    cxStyle720: TcxStyle;
    cxStyle721: TcxStyle;
    cxStyle722: TcxStyle;
    cxStyle723: TcxStyle;
    cxStyle724: TcxStyle;
    cxStyle725: TcxStyle;
    cxStyle726: TcxStyle;
    cxStyle727: TcxStyle;
    cxStyle728: TcxStyle;
    cxStyle729: TcxStyle;
    cxStyle730: TcxStyle;
    cxStyle731: TcxStyle;
    cxStyle732: TcxStyle;
    cxStyle733: TcxStyle;
    cxStyle734: TcxStyle;
    cxStyle735: TcxStyle;
    cxStyle736: TcxStyle;
    cxStyle737: TcxStyle;
    cxStyle738: TcxStyle;
    cxStyle739: TcxStyle;
    cxStyle740: TcxStyle;
    cxStyle741: TcxStyle;
    cxStyle742: TcxStyle;
    cxStyle743: TcxStyle;
    cxStyle744: TcxStyle;
    cxStyle745: TcxStyle;
    cxStyle746: TcxStyle;
    cxStyle747: TcxStyle;
    cxStyle748: TcxStyle;
    cxStyle749: TcxStyle;
    cxStyle750: TcxStyle;
    cxStyle751: TcxStyle;
    cxStyle752: TcxStyle;
    cxStyle753: TcxStyle;
    cxStyle754: TcxStyle;
    cxStyle755: TcxStyle;
    cxStyle756: TcxStyle;
    cxStyle757: TcxStyle;
    cxStyle758: TcxStyle;
    cxStyle759: TcxStyle;
    cxStyle760: TcxStyle;
    cxStyle761: TcxStyle;
    cxStyle762: TcxStyle;
    cxStyle763: TcxStyle;
    cxStyle764: TcxStyle;
    cxStyle765: TcxStyle;
    cxStyle766: TcxStyle;
    cxStyle767: TcxStyle;
    cxStyle768: TcxStyle;
    cxStyle769: TcxStyle;
    cxStyle770: TcxStyle;
    cxStyle771: TcxStyle;
    cxStyle772: TcxStyle;
    cxStyle773: TcxStyle;
    cxStyle774: TcxStyle;
    cxStyle775: TcxStyle;
    cxStyle776: TcxStyle;
    TreeListStyleSheetDevExpress: TcxTreeListStyleSheet;
    TreeListStyleSheetUserFormat1: TcxTreeListStyleSheet;
    TreeListStyleSheetUserFormat2: TcxTreeListStyleSheet;
    TreeListStyleSheetUserFormat3: TcxTreeListStyleSheet;
    TreeListStyleSheetUserFormat4: TcxTreeListStyleSheet;
    TreeListStyleSheetBrick: TcxTreeListStyleSheet;
    TreeListStyleSheetDesert: TcxTreeListStyleSheet;
    TreeListStyleSheetEggplant: TcxTreeListStyleSheet;
    TreeListStyleSheetLilac: TcxTreeListStyleSheet;
    TreeListStyleSheetMaple: TcxTreeListStyleSheet;
    TreeListStyleSheetMarineHighColor: TcxTreeListStyleSheet;
    TreeListStyleSheetPlumHighColor: TcxTreeListStyleSheet;
    TreeListStyleSheetPumpkinLarge: TcxTreeListStyleSheet;
    TreeListStyleSheetRainyDay: TcxTreeListStyleSheet;
    TreeListStyleSheetRedWhiteBlueVGA: TcxTreeListStyleSheet;
    TreeListStyleSheetRose: TcxTreeListStyleSheet;
    TreeListStyleSheetRoseLarge: TcxTreeListStyleSheet;
    TreeListStyleSheetSlate: TcxTreeListStyleSheet;
    TreeListStyleSheetSpruce: TcxTreeListStyleSheet;
    TreeListStyleSheetStormVGA: TcxTreeListStyleSheet;
    TreeListStyleSheetTealVGA: TcxTreeListStyleSheet;
    TreeListStyleSheetWheat: TcxTreeListStyleSheet;
    TreeListStyleSheetWindowsClassic: TcxTreeListStyleSheet;
    TreeListStyleSheetWindowsClassicLarge: TcxTreeListStyleSheet;
    TreeListStyleSheetWindowsStandard: TcxTreeListStyleSheet;
    TreeListStyleSheetWindowsStandardLarge: TcxTreeListStyleSheet;
    TreeListStyleSheetHighContrast1: TcxTreeListStyleSheet;
    TreeListStyleSheetHighContrast1Large: TcxTreeListStyleSheet;
    TreeListStyleSheetHighContrast2: TcxTreeListStyleSheet;
    TreeListStyleSheetHighContrast2Large: TcxTreeListStyleSheet;
    TreeListStyleSheetHighContrastBlack: TcxTreeListStyleSheet;
    TreeListStyleSheetHighContrastBlackLarge: TcxTreeListStyleSheet;
    TreeListStyleSheetHighContrastWhite: TcxTreeListStyleSheet;
    TreeListStyleSheetHighContrastWhiteLarge: TcxTreeListStyleSheet;
    BGridPredefined: TcxStyleRepository;
    cxStyle378: TcxStyle;
    cxStyle379: TcxStyle;
    cxStyle380: TcxStyle;
    cxStyle381: TcxStyle;
    cxStyle382: TcxStyle;
    cxStyle383: TcxStyle;
    cxStyle384: TcxStyle;
    cxStyle385: TcxStyle;
    cxStyle386: TcxStyle;
    cxStyle387: TcxStyle;
    cxStyle388: TcxStyle;
    cxStyle389: TcxStyle;
    cxStyle390: TcxStyle;
    cxStyle391: TcxStyle;
    cxStyle392: TcxStyle;
    cxStyle393: TcxStyle;
    cxStyle394: TcxStyle;
    cxStyle395: TcxStyle;
    cxStyle396: TcxStyle;
    cxStyle397: TcxStyle;
    cxStyle398: TcxStyle;
    cxStyle399: TcxStyle;
    cxStyle400: TcxStyle;
    cxStyle401: TcxStyle;
    cxStyle402: TcxStyle;
    cxStyle403: TcxStyle;
    cxStyle404: TcxStyle;
    cxStyle405: TcxStyle;
    cxStyle777: TcxStyle;
    cxStyle778: TcxStyle;
    cxStyle779: TcxStyle;
    cxStyle780: TcxStyle;
    cxStyle781: TcxStyle;
    cxStyle782: TcxStyle;
    cxStyle783: TcxStyle;
    cxStyle784: TcxStyle;
    cxStyle785: TcxStyle;
    cxStyle786: TcxStyle;
    cxStyle787: TcxStyle;
    cxStyle788: TcxStyle;
    cxStyle789: TcxStyle;
    cxStyle790: TcxStyle;
    cxStyle791: TcxStyle;
    cxStyle792: TcxStyle;
    cxStyle793: TcxStyle;
    cxStyle794: TcxStyle;
    cxStyle795: TcxStyle;
    cxStyle796: TcxStyle;
    cxStyle797: TcxStyle;
    cxStyle798: TcxStyle;
    cxStyle799: TcxStyle;
    cxStyle800: TcxStyle;
    cxStyle801: TcxStyle;
    cxStyle802: TcxStyle;
    cxStyle803: TcxStyle;
    cxStyle804: TcxStyle;
    cxStyle805: TcxStyle;
    cxStyle806: TcxStyle;
    cxStyle807: TcxStyle;
    cxStyle808: TcxStyle;
    cxStyle809: TcxStyle;
    cxStyle810: TcxStyle;
    cxStyle811: TcxStyle;
    cxStyle812: TcxStyle;
    cxStyle813: TcxStyle;
    cxStyle814: TcxStyle;
    cxStyle815: TcxStyle;
    cxStyle816: TcxStyle;
    cxStyle817: TcxStyle;
    cxStyle818: TcxStyle;
    cxStyle819: TcxStyle;
    cxStyle820: TcxStyle;
    cxStyle821: TcxStyle;
    cxStyle822: TcxStyle;
    cxStyle823: TcxStyle;
    cxStyle824: TcxStyle;
    cxStyle825: TcxStyle;
    cxStyle826: TcxStyle;
    cxStyle827: TcxStyle;
    cxStyle828: TcxStyle;
    cxStyle829: TcxStyle;
    cxStyle830: TcxStyle;
    cxStyle831: TcxStyle;
    cxStyle832: TcxStyle;
    cxStyle833: TcxStyle;
    cxStyle834: TcxStyle;
    cxStyle835: TcxStyle;
    cxStyle836: TcxStyle;
    cxStyle837: TcxStyle;
    cxStyle838: TcxStyle;
    cxStyle839: TcxStyle;
    cxStyle840: TcxStyle;
    cxStyle841: TcxStyle;
    cxStyle842: TcxStyle;
    cxStyle843: TcxStyle;
    cxStyle844: TcxStyle;
    cxStyle845: TcxStyle;
    cxStyle846: TcxStyle;
    cxStyle847: TcxStyle;
    cxStyle848: TcxStyle;
    cxStyle849: TcxStyle;
    cxStyle850: TcxStyle;
    cxStyle851: TcxStyle;
    cxStyle852: TcxStyle;
    cxStyle853: TcxStyle;
    cxStyle854: TcxStyle;
    cxStyle855: TcxStyle;
    cxStyle856: TcxStyle;
    cxStyle857: TcxStyle;
    cxStyle858: TcxStyle;
    cxStyle859: TcxStyle;
    cxStyle860: TcxStyle;
    cxStyle861: TcxStyle;
    cxStyle862: TcxStyle;
    cxStyle863: TcxStyle;
    cxStyle864: TcxStyle;
    cxStyle865: TcxStyle;
    cxStyle866: TcxStyle;
    cxStyle867: TcxStyle;
    cxStyle868: TcxStyle;
    cxStyle869: TcxStyle;
    cxStyle870: TcxStyle;
    cxStyle871: TcxStyle;
    cxStyle872: TcxStyle;
    cxStyle873: TcxStyle;
    cxStyle874: TcxStyle;
    cxStyle875: TcxStyle;
    cxStyle876: TcxStyle;
    cxStyle877: TcxStyle;
    cxStyle878: TcxStyle;
    cxStyle879: TcxStyle;
    cxStyle880: TcxStyle;
    cxStyle881: TcxStyle;
    cxStyle882: TcxStyle;
    cxStyle883: TcxStyle;
    cxStyle884: TcxStyle;
    cxStyle885: TcxStyle;
    cxStyle886: TcxStyle;
    cxStyle887: TcxStyle;
    cxStyle888: TcxStyle;
    cxStyle889: TcxStyle;
    cxStyle890: TcxStyle;
    cxStyle891: TcxStyle;
    cxStyle892: TcxStyle;
    cxStyle893: TcxStyle;
    cxStyle894: TcxStyle;
    cxStyle895: TcxStyle;
    cxStyle896: TcxStyle;
    cxStyle897: TcxStyle;
    cxStyle898: TcxStyle;
    cxStyle899: TcxStyle;
    cxStyle900: TcxStyle;
    cxStyle901: TcxStyle;
    cxStyle902: TcxStyle;
    cxStyle903: TcxStyle;
    cxStyle904: TcxStyle;
    cxStyle905: TcxStyle;
    cxStyle906: TcxStyle;
    cxStyle907: TcxStyle;
    cxStyle908: TcxStyle;
    cxStyle909: TcxStyle;
    cxStyle910: TcxStyle;
    cxStyle911: TcxStyle;
    cxStyle912: TcxStyle;
    cxStyle913: TcxStyle;
    cxStyle914: TcxStyle;
    cxStyle915: TcxStyle;
    cxStyle916: TcxStyle;
    cxStyle917: TcxStyle;
    cxStyle918: TcxStyle;
    cxStyle919: TcxStyle;
    cxStyle920: TcxStyle;
    cxStyle921: TcxStyle;
    cxStyle922: TcxStyle;
    cxStyle923: TcxStyle;
    cxStyle924: TcxStyle;
    cxStyle925: TcxStyle;
    cxStyle926: TcxStyle;
    cxStyle927: TcxStyle;
    cxStyle928: TcxStyle;
    cxStyle929: TcxStyle;
    cxStyle930: TcxStyle;
    cxStyle931: TcxStyle;
    cxStyle932: TcxStyle;
    cxStyle933: TcxStyle;
    cxStyle934: TcxStyle;
    cxStyle935: TcxStyle;
    cxStyle936: TcxStyle;
    cxStyle937: TcxStyle;
    cxStyle938: TcxStyle;
    cxStyle939: TcxStyle;
    cxStyle940: TcxStyle;
    cxStyle941: TcxStyle;
    cxStyle942: TcxStyle;
    cxStyle943: TcxStyle;
    cxStyle944: TcxStyle;
    cxStyle945: TcxStyle;
    cxStyle946: TcxStyle;
    cxStyle947: TcxStyle;
    cxStyle948: TcxStyle;
    cxStyle949: TcxStyle;
    cxStyle950: TcxStyle;
    cxStyle951: TcxStyle;
    cxStyle952: TcxStyle;
    cxStyle953: TcxStyle;
    cxStyle954: TcxStyle;
    cxStyle955: TcxStyle;
    cxStyle956: TcxStyle;
    cxStyle957: TcxStyle;
    cxStyle958: TcxStyle;
    cxStyle959: TcxStyle;
    cxStyle960: TcxStyle;
    cxStyle961: TcxStyle;
    cxStyle962: TcxStyle;
    cxStyle963: TcxStyle;
    cxStyle964: TcxStyle;
    cxStyle965: TcxStyle;
    cxStyle966: TcxStyle;
    cxStyle967: TcxStyle;
    cxStyle968: TcxStyle;
    cxStyle969: TcxStyle;
    cxStyle970: TcxStyle;
    cxStyle971: TcxStyle;
    cxStyle972: TcxStyle;
    cxStyle973: TcxStyle;
    cxStyle974: TcxStyle;
    cxStyle975: TcxStyle;
    cxStyle976: TcxStyle;
    cxStyle977: TcxStyle;
    cxStyle978: TcxStyle;
    cxStyle979: TcxStyle;
    cxStyle980: TcxStyle;
    cxStyle981: TcxStyle;
    cxStyle982: TcxStyle;
    cxStyle983: TcxStyle;
    cxStyle984: TcxStyle;
    cxStyle985: TcxStyle;
    cxStyle986: TcxStyle;
    cxStyle987: TcxStyle;
    cxStyle988: TcxStyle;
    cxStyle989: TcxStyle;
    cxStyle990: TcxStyle;
    cxStyle991: TcxStyle;
    cxStyle992: TcxStyle;
    cxStyle993: TcxStyle;
    cxStyle994: TcxStyle;
    cxStyle995: TcxStyle;
    cxStyle996: TcxStyle;
    cxStyle997: TcxStyle;
    cxStyle998: TcxStyle;
    cxStyle999: TcxStyle;
    cxStyle1000: TcxStyle;
    cxStyle1001: TcxStyle;
    cxStyle1002: TcxStyle;
    cxStyle1003: TcxStyle;
    cxStyle1004: TcxStyle;
    cxStyle1005: TcxStyle;
    cxStyle1006: TcxStyle;
    cxStyle1007: TcxStyle;
    cxStyle1008: TcxStyle;
    cxStyle1009: TcxStyle;
    cxStyle1010: TcxStyle;
    cxStyle1011: TcxStyle;
    cxStyle1012: TcxStyle;
    cxStyle1013: TcxStyle;
    cxStyle1014: TcxStyle;
    cxStyle1015: TcxStyle;
    cxStyle1016: TcxStyle;
    cxStyle1017: TcxStyle;
    cxStyle1018: TcxStyle;
    cxStyle1019: TcxStyle;
    cxStyle1020: TcxStyle;
    cxStyle1021: TcxStyle;
    cxStyle1022: TcxStyle;
    cxStyle1023: TcxStyle;
    cxStyle1024: TcxStyle;
    cxStyle1025: TcxStyle;
    cxStyle1026: TcxStyle;
    cxStyle1027: TcxStyle;
    cxStyle1028: TcxStyle;
    cxStyle1029: TcxStyle;
    cxStyle1030: TcxStyle;
    cxStyle1031: TcxStyle;
    cxStyle1032: TcxStyle;
    cxStyle1033: TcxStyle;
    cxStyle1034: TcxStyle;
    cxStyle1035: TcxStyle;
    cxStyle1036: TcxStyle;
    cxStyle1037: TcxStyle;
    cxStyle1038: TcxStyle;
    cxStyle1039: TcxStyle;
    cxStyle1040: TcxStyle;
    cxStyle1041: TcxStyle;
    cxStyle1042: TcxStyle;
    cxStyle1043: TcxStyle;
    cxStyle1044: TcxStyle;
    cxStyle1045: TcxStyle;
    cxStyle1046: TcxStyle;
    cxStyle1047: TcxStyle;
    cxStyle1048: TcxStyle;
    cxStyle1049: TcxStyle;
    cxStyle1050: TcxStyle;
    cxStyle1051: TcxStyle;
    cxStyle1052: TcxStyle;
    cxStyle1053: TcxStyle;
    cxStyle1054: TcxStyle;
    cxStyle1055: TcxStyle;
    cxStyle1056: TcxStyle;
    cxStyle1057: TcxStyle;
    cxStyle1058: TcxStyle;
    cxStyle1059: TcxStyle;
    cxStyle1060: TcxStyle;
    cxStyle1061: TcxStyle;
    cxStyle1062: TcxStyle;
    cxStyle1063: TcxStyle;
    cxStyle1064: TcxStyle;
    cxStyle1065: TcxStyle;
    cxStyle1066: TcxStyle;
    cxStyle1067: TcxStyle;
    cxStyle1068: TcxStyle;
    cxStyle1069: TcxStyle;
    cxStyle1070: TcxStyle;
    cxStyle1071: TcxStyle;
    cxStyle1072: TcxStyle;
    cxStyle1073: TcxStyle;
    cxStyle1074: TcxStyle;
    cxStyle1075: TcxStyle;
    cxStyle1076: TcxStyle;
    cxStyle1077: TcxStyle;
    cxStyle1078: TcxStyle;
    cxStyle1079: TcxStyle;
    cxStyle1080: TcxStyle;
    cxStyle1081: TcxStyle;
    cxStyle1082: TcxStyle;
    cxStyle1083: TcxStyle;
    cxStyle1084: TcxStyle;
    cxStyle1085: TcxStyle;
    cxStyle1086: TcxStyle;
    cxStyle1087: TcxStyle;
    cxStyle1088: TcxStyle;
    cxStyle1089: TcxStyle;
    cxStyle1090: TcxStyle;
    cxStyle1091: TcxStyle;
    cxStyle1092: TcxStyle;
    cxStyle1093: TcxStyle;
    cxStyle1094: TcxStyle;
    cxStyle1095: TcxStyle;
    cxStyle1096: TcxStyle;
    cxStyle1097: TcxStyle;
    cxStyle1098: TcxStyle;
    cxStyle1099: TcxStyle;
    cxStyle1100: TcxStyle;
    cxStyle1101: TcxStyle;
    cxStyle1102: TcxStyle;
    cxStyle1103: TcxStyle;
    cxStyle1104: TcxStyle;
    cxStyle1105: TcxStyle;
    cxStyle1106: TcxStyle;
    cxStyle1107: TcxStyle;
    cxStyle1108: TcxStyle;
    cxStyle1109: TcxStyle;
    cxStyle1110: TcxStyle;
    cxStyle1111: TcxStyle;
    cxStyle1112: TcxStyle;
    cxStyle1113: TcxStyle;
    cxStyle1114: TcxStyle;
    cxStyle1115: TcxStyle;
    cxStyle1116: TcxStyle;
    cxStyle1117: TcxStyle;
    cxStyle1118: TcxStyle;
    cxStyle1119: TcxStyle;
    cxStyle1120: TcxStyle;
    cxStyle1121: TcxStyle;
    cxStyle1122: TcxStyle;
    cxStyle1123: TcxStyle;
    cxStyle1124: TcxStyle;
    cxStyle1125: TcxStyle;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet2: TcxGridBandedTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet3: TcxGridBandedTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet4: TcxGridBandedTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet5: TcxGridBandedTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet6: TcxGridBandedTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet7: TcxGridBandedTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet8: TcxGridBandedTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet9: TcxGridBandedTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet10: TcxGridBandedTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet11: TcxGridBandedTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet12: TcxGridBandedTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet13: TcxGridBandedTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet14: TcxGridBandedTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet15: TcxGridBandedTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet16: TcxGridBandedTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet17: TcxGridBandedTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet18: TcxGridBandedTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet19: TcxGridBandedTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet20: TcxGridBandedTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet21: TcxGridBandedTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet22: TcxGridBandedTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet23: TcxGridBandedTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet24: TcxGridBandedTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet25: TcxGridBandedTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet26: TcxGridBandedTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet27: TcxGridBandedTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet28: TcxGridBandedTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet29: TcxGridBandedTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet30: TcxGridBandedTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet31: TcxGridBandedTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet32: TcxGridBandedTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet33: TcxGridBandedTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet34: TcxGridBandedTableViewStyleSheet;
  private
    { Private declarations }
  public
    StyleIndex     : variant;
    BarStyleIndex  : variant;
    GridStyleIndex : variant;
    StatusBarStyle : variant;
  end;

var
  DM_Styles: TDM_Styles;

implementation

{$R *.dfm}

end.

.class public final Lcom/android/internal/telephony/TelephonyLogger;
.super Ljava/lang/Object;
.source "TelephonyLogger.java"


# static fields
.field private static final blacklist CALL_LOG_ALL:[Ljava/lang/String;

.field private static final blacklist CALL_LOG_REQUEST_ONLY:[Ljava/lang/String;

.field private static final blacklist CALL_LOG_RESPONSE_ONLY:[Ljava/lang/String;

.field private static final blacklist CALL_LOG_UNSOLICITED:[Ljava/lang/String;

.field private static final blacklist ENABLE_SATELLITE_MERGED_LOG:Z

.field private static final blacklist IMSREGI_LOG_REQUEST_ONLY:[Ljava/lang/String;

.field private static final blacklist IMSREGI_LOG_UNSOLICITED:[Ljava/lang/String;

.field protected static final blacklist LOG_STRING_CS_REGI:Ljava/lang/String; = "!@Boot_SVC: CS Registered"

.field protected static final blacklist LOG_STRING_PS_REGI:Ljava/lang/String; = "!@Boot_SVC: GPRS Attached"

.field private static final blacklist TELEPHONY_FEATURES:[Ljava/lang/String;

.field public static final blacklist TL_DIR_FROM:I = 0x2

.field public static final blacklist TL_DIR_NODIR:I = 0x3

.field public static final blacklist TL_DIR_TO:I = 0x1

.field public static final blacklist TL_LOCALLOG_CALL:I = 0x1

.field public static final blacklist TL_LOCALLOG_CMC:I = 0x6

.field public static final blacklist TL_LOCALLOG_IMS_COMMON:I = 0x2

.field public static final blacklist TL_LOCALLOG_IMS_EXTERNAL:I = 0x5

.field public static final blacklist TL_LOCALLOG_IMS_REGI:I = 0x3

.field public static final blacklist TL_LOCALLOG_IMS_UT:I = 0x4

.field public static final blacklist TL_LOCALLOG_INVALID:I = 0x0

.field public static final blacklist TL_LOCALLOG_SATELLITE_CONTROLLER:I = 0x9

.field public static final blacklist TL_LOCALLOG_SATELLITE_MODEM:I = 0x7

.field public static final blacklist TL_LOCALLOG_SATELLITE_MODEM_POSITION_CHANGED:I = 0xa

.field public static final blacklist TL_LOCALLOG_SATELLITE_SESSION_CONTROLLER:I = 0x8

.field public static final blacklist TL_LOCALLOG_SEM_SATELLITE_CALL_TRACKER:I = 0xb

.field public static final blacklist TL_LOGTAG_CSTF:Ljava/lang/String; = "CSTF"

.field public static final blacklist TL_PREFIX_CMCCALLTRACKER:I = 0x7

.field public static final blacklist TL_PREFIX_IMSEXTERNALCALLTRACKER:I = 0x6

.field public static final blacklist TL_PREFIX_IMSPHONE:I = 0x1

.field public static final blacklist TL_PREFIX_IMSPHONECALL:I = 0x2

.field public static final blacklist TL_PREFIX_IMSPHONECALLTRACKER:I = 0x3

.field public static final blacklist TL_PREFIX_IMSPHONECONNECTION:I = 0x4

.field public static final blacklist TL_PREFIX_IMSPHONEMMICODE:I = 0x5

.field public static final blacklist TL_PREFIX_SATELLITECALLTRACKER:I = 0xb

.field public static final blacklist TL_PREFIX_SATELLITECONTROLLER:I = 0xa

.field public static final blacklist TL_PREFIX_SATELLITEMODEMINTERFACE:I = 0x8

.field public static final blacklist TL_PREFIX_SATELLITESESSIONCONTROLLER:I = 0x9

.field private static final blacklist sBootingLogMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sPatternBlankCallList:Ljava/util/regex/Pattern;

.field private static blacklist sPatternCallList:Ljava/util/regex/Pattern;

.field private static blacklist sPatternRequest:Ljava/util/regex/Pattern;

.field private static blacklist sPatternRequestResponse:Ljava/util/regex/Pattern;

.field private static blacklist sPatternUnsolicitedResponse:Ljava/util/regex/Pattern;


# instance fields
.field private final blacklist mBootingLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mCallLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mCheckPointLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mCmcLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mConnectionHistoryLog:Lcom/android/internal/telephony/LocalLog;

.field blacklist mIgnoreNextBlankCallList:Z

.field private final blacklist mImsCommonLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mImsExternalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mImsRegiLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mImsUtLog:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mKeyCompleted:I

.field private final blacklist mLastDialInfoLog:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mSatelliteControllerLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mSatelliteMergedLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mSatelliteModemLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mSatelliteModemPositionChangedLog:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mSatellitePhoneId:I

.field private final blacklist mSatelliteSessionControllerLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mSemSatelliteCallTrackerLog:Lcom/android/internal/telephony/LocalLog;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 12

    .line 36
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/TelephonyLogger;->ENABLE_SATELLITE_MERGED_LOG:Z

    .line 100
    const-string v0, "(\\[)([0-9]{4})(\\])(> )([A-Z_]{3,})($| .+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyLogger;->sPatternRequest:Ljava/util/regex/Pattern;

    .line 103
    const-string v0, "(\\[)([0-9]{4})(\\])(< )([A-Z_]{3,})( .*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyLogger;->sPatternRequestResponse:Ljava/util/regex/Pattern;

    .line 106
    const-string v0, "(\\[)(UNSL)(\\])(< )([A-Z_]{3,})($| .+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyLogger;->sPatternUnsolicitedResponse:Ljava/util/regex/Pattern;

    .line 109
    const-string v0, "(\\[)([0-9]{4})(\\])(< GET_CURRENT_CALLS )(\\{)(\\[id.*)(\\})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyLogger;->sPatternCallList:Ljava/util/regex/Pattern;

    .line 112
    const-string v0, "(\\[)([0-9]{4})(\\])(< GET_CURRENT_CALLS )((error [0-9]+)|(\\{\\}))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyLogger;->sPatternBlankCallList:Ljava/util/regex/Pattern;

    .line 134
    invoke-static {}, Lcom/android/internal/telephony/TelephonyLogger;->createBootingLogMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyLogger;->sBootingLogMap:Ljava/util/Map;

    const/16 v0, 0xa

    .line 296
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0xf

    .line 297
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x10

    .line 298
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0x28

    .line 299
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0x34

    .line 300
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v0, 0x48

    .line 301
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v0, 0x54

    .line 302
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v0, 0x63

    .line 303
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v0, 0xe5

    .line 304
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v0, 0xeb

    .line 305
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v10

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyLogger;->CALL_LOG_ALL:[Ljava/lang/String;

    const/16 v0, 0x17

    .line 309
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0xe6

    .line 310
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0xe7

    .line 311
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0xe8

    .line 312
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0xe9

    .line 313
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v0, 0xec

    .line 314
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v0, 0xee

    .line 315
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v0, 0xf0

    .line 316
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v0, 0xf1

    .line 317
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v9

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyLogger;->CALL_LOG_REQUEST_ONLY:[Ljava/lang/String;

    const/16 v0, 0x9

    .line 321
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12

    .line 322
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyLogger;->CALL_LOG_RESPONSE_ONLY:[Ljava/lang/String;

    const/16 v0, 0x3fa

    .line 326
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x400

    .line 327
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->responseToString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x401

    .line 328
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->responseToString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0x403

    .line 329
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->responseToString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0x409

    .line 330
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->responseToString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v0, 0x40b

    .line 331
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->responseToString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v0, 0x40f

    .line 332
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->responseToString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v0, 0x452

    .line 333
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->responseToString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v0, 0x454

    .line 334
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->responseToString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v0, 0x2b16

    .line 335
    invoke-static {v0}, Lcom/android/internal/telephony/SemRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v0, 0x2b44

    .line 336
    invoke-static {v0}, Lcom/android/internal/telephony/SemRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v11

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyLogger;->CALL_LOG_UNSOLICITED:[Ljava/lang/String;

    const/16 v0, 0xea

    .line 340
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyLogger;->IMSREGI_LOG_REQUEST_ONLY:[Ljava/lang/String;

    const/16 v0, 0x453

    .line 344
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->responseToString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyLogger;->IMSREGI_LOG_UNSOLICITED:[Ljava/lang/String;

    .line 485
    const-string v9, "android.hardware.telephony.messaging"

    const-string v10, "android.software.telecom"

    const-string v1, "android.hardware.telephony"

    const-string v2, "android.hardware.telephony.radio.access"

    const-string v3, "android.hardware.telephony.cdma"

    const-string v4, "android.hardware.telephony.gsm"

    const-string v5, "android.hardware.telephony.calling"

    const-string v6, "android.hardware.telephony.satellite"

    const-string v7, "android.hardware.telephony.subscription"

    const-string v8, "android.hardware.telephony.data"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyLogger;->TELEPHONY_FEATURES:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 6

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mSatellitePhoneId:I

    .line 42
    new-instance v1, Lcom/android/internal/telephony/LocalLog;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyLogger;->mCallLog:Lcom/android/internal/telephony/LocalLog;

    .line 43
    new-instance v1, Lcom/android/internal/telephony/LocalLog;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyLogger;->mImsCommonLog:Lcom/android/internal/telephony/LocalLog;

    .line 44
    new-instance v1, Lcom/android/internal/telephony/LocalLog;

    const/16 v3, 0x20

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyLogger;->mImsRegiLog:Lcom/android/internal/telephony/LocalLog;

    .line 45
    new-instance v1, Lcom/android/internal/telephony/LocalLog;

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyLogger;->mImsUtLog:Lcom/android/internal/telephony/LocalLog;

    .line 46
    new-instance v1, Lcom/android/internal/telephony/LocalLog;

    const/16 v4, 0x8

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyLogger;->mImsExternalLog:Lcom/android/internal/telephony/LocalLog;

    .line 47
    new-instance v1, Lcom/android/internal/telephony/LocalLog;

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyLogger;->mCmcLog:Lcom/android/internal/telephony/LocalLog;

    .line 48
    new-instance v1, Lcom/android/internal/telephony/LocalLog;

    sget-boolean v5, Lcom/android/internal/telephony/TelephonyLogger;->ENABLE_SATELLITE_MERGED_LOG:Z

    if-eqz v5, :cond_0

    const/16 v5, 0x100

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    invoke-direct {v1, v5}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyLogger;->mSatelliteMergedLog:Lcom/android/internal/telephony/LocalLog;

    .line 49
    new-instance v1, Lcom/android/internal/telephony/LocalLog;

    const/16 v5, 0x40

    invoke-direct {v1, v5}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyLogger;->mSatelliteModemLog:Lcom/android/internal/telephony/LocalLog;

    .line 50
    new-instance v1, Lcom/android/internal/telephony/LocalLog;

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyLogger;->mSatelliteSessionControllerLog:Lcom/android/internal/telephony/LocalLog;

    .line 51
    new-instance v1, Lcom/android/internal/telephony/LocalLog;

    invoke-direct {v1, v5}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyLogger;->mSatelliteControllerLog:Lcom/android/internal/telephony/LocalLog;

    .line 52
    new-instance v1, Lcom/android/internal/telephony/LocalLog;

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyLogger;->mSatelliteModemPositionChangedLog:Lcom/android/internal/telephony/LocalLog;

    .line 53
    new-instance v1, Lcom/android/internal/telephony/LocalLog;

    invoke-direct {v1, v5}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyLogger;->mSemSatelliteCallTrackerLog:Lcom/android/internal/telephony/LocalLog;

    .line 121
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mIgnoreNextBlankCallList:Z

    .line 136
    iput v0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mKeyCompleted:I

    .line 138
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mBootingLog:Lcom/android/internal/telephony/LocalLog;

    .line 142
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mLastDialInfoLog:Lcom/android/internal/telephony/LocalLog;

    .line 146
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mCheckPointLog:Lcom/android/internal/telephony/LocalLog;

    .line 150
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mConnectionHistoryLog:Lcom/android/internal/telephony/LocalLog;

    .line 153
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 155
    const-string p1, "GsmCdmaPhone"

    const-string v0, "new GsmCdmaPhone"

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/TelephonyLogger;->writeBootingLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist callDump(Ljava/lang/String;ILjava/lang/String;Lcom/android/internal/telephony/Call;)V
    .locals 5

    .line 468
    invoke-virtual {p3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 469
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 473
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] calltrackerDump: ----- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Call("

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ") -----"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    .line 476
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 477
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] calltrackerDump: conn["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyLogUtils;->connectionToString(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static blacklist calltrackerDump(Ljava/lang/String;ILjava/lang/String;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V
    .locals 2

    .line 459
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] calltrackerDump: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p3, :cond_1

    .line 461
    const-string p2, "Ringing"

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/TelephonyLogger;->callDump(Ljava/lang/String;ILjava/lang/String;Lcom/android/internal/telephony/Call;)V

    :cond_1
    if-eqz p4, :cond_2

    .line 462
    const-string p2, "Foreground"

    invoke-static {p0, p1, p2, p4}, Lcom/android/internal/telephony/TelephonyLogger;->callDump(Ljava/lang/String;ILjava/lang/String;Lcom/android/internal/telephony/Call;)V

    :cond_2
    if-eqz p5, :cond_3

    .line 463
    const-string p2, "Background"

    invoke-static {p0, p1, p2, p5}, Lcom/android/internal/telephony/TelephonyLogger;->callDump(Ljava/lang/String;ILjava/lang/String;Lcom/android/internal/telephony/Call;)V

    :cond_3
    if-eqz p6, :cond_4

    .line 464
    const-string p2, "Handover"

    invoke-static {p0, p1, p2, p6}, Lcom/android/internal/telephony/TelephonyLogger;->callDump(Ljava/lang/String;ILjava/lang/String;Lcom/android/internal/telephony/Call;)V

    :cond_4
    return-void
.end method

.method private static blacklist createBootingLogMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    .line 160
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "new GsmCdmaPhone"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 161
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "!@Boot_SVC: CS Registered"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 162
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "!@Boot_SVC: GPRS Attached"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist getRilLocalLogIdentifier(Ljava/lang/String;)I
    .locals 6

    .line 349
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 355
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyLogger;->sPatternRequest:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 356
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    move p0, v5

    goto :goto_0

    .line 359
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyLogger;->sPatternRequestResponse:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    move p0, v3

    goto :goto_0

    .line 363
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/TelephonyLogger;->sPatternUnsolicitedResponse:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v4

    goto :goto_0

    :cond_3
    move p0, v1

    :goto_0
    if-nez p0, :cond_4

    return v1

    :cond_4
    const/4 v2, 0x5

    .line 376
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 377
    :catch_0
    const-string v0, ""

    .line 379
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v1

    :cond_5
    if-eq p0, v5, :cond_8

    if-ne p0, v3, :cond_6

    goto :goto_2

    :cond_6
    if-ne p0, v4, :cond_c

    .line 395
    sget-object p0, Lcom/android/internal/telephony/TelephonyLogger;->CALL_LOG_UNSOLICITED:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/internal/telephony/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    return v5

    .line 396
    :cond_7
    sget-object p0, Lcom/android/internal/telephony/TelephonyLogger;->IMSREGI_LOG_UNSOLICITED:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/internal/telephony/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    return v4

    .line 384
    :cond_8
    :goto_2
    const-string v2, "EMERGENCY_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "HANGUP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    sget-object v2, Lcom/android/internal/telephony/TelephonyLogger;->CALL_LOG_ALL:[Ljava/lang/String;

    .line 385
    invoke-static {v2, v0}, Lcom/android/internal/telephony/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_3

    :cond_9
    if-ne p0, v5, :cond_b

    .line 389
    sget-object p0, Lcom/android/internal/telephony/TelephonyLogger;->CALL_LOG_REQUEST_ONLY:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/internal/telephony/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    return v5

    .line 390
    :cond_a
    sget-object p0, Lcom/android/internal/telephony/TelephonyLogger;->IMSREGI_LOG_REQUEST_ONLY:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/internal/telephony/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    return v4

    :cond_b
    if-ne p0, v3, :cond_c

    .line 391
    sget-object p0, Lcom/android/internal/telephony/TelephonyLogger;->CALL_LOG_RESPONSE_ONLY:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/internal/telephony/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    return v5

    :cond_c
    return v1

    :cond_d
    :goto_3
    return v5

    :cond_e
    :goto_4
    return v1
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method private varargs blacklist makeFlowLog(IIILjava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 207
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 p1, 0x40

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 210
    invoke-static {p2, p3}, Lcom/android/internal/telephony/TelephonyLogUtils;->prefixToString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-static {p5}, Lcom/android/internal/telephony/TelephonyLogUtils;->directionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-static {p6}, Lcom/android/internal/telephony/TelephonyLogUtils;->detailsToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist writeFlowLog(ILjava/lang/String;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 288
    :pswitch_0
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mSemSatelliteCallTrackerLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void

    .line 285
    :pswitch_1
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mSatelliteModemPositionChangedLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void

    .line 281
    :pswitch_2
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyLogger;->mSatelliteControllerLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 282
    sget-boolean p1, Lcom/android/internal/telephony/TelephonyLogger;->ENABLE_SATELLITE_MERGED_LOG:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mSatelliteMergedLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void

    .line 277
    :pswitch_3
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyLogger;->mSatelliteSessionControllerLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 278
    sget-boolean p1, Lcom/android/internal/telephony/TelephonyLogger;->ENABLE_SATELLITE_MERGED_LOG:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mSatelliteMergedLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void

    .line 273
    :pswitch_4
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyLogger;->mSatelliteModemLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 274
    sget-boolean p1, Lcom/android/internal/telephony/TelephonyLogger;->ENABLE_SATELLITE_MERGED_LOG:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mSatelliteMergedLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    .line 270
    :pswitch_5
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mCmcLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void

    .line 267
    :pswitch_6
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mImsExternalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void

    .line 264
    :pswitch_7
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mImsUtLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void

    .line 261
    :pswitch_8
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mImsRegiLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void

    .line 258
    :pswitch_9
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mImsCommonLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void

    .line 255
    :pswitch_a
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mCallLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    .line 499
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TelephonyLogger["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " OperatorName["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " OperatorType["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getOperatorType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " CountryName["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 507
    const-string v3, " NetworkCode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getNetworkCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    const-string v3, ", CarrierGroup: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getCarrierGroup(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    const-string v0, ", SalesCode: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 515
    const-string v1, " SubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 516
    const-string v1, ", DefaultSubId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 517
    const-string v1, "(Voice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 518
    const-string v1, ", Data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 524
    const-string v4, " Device="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->HARDWARE_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    sget-boolean v5, Lcom/android/internal/telephony/TelephonyFeatures;->IS_QCOM:Z

    if-eqz v5, :cond_0

    const-string v5, "(QCOM)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    :cond_0
    sget-boolean v5, Lcom/android/internal/telephony/TelephonyFeatures;->IS_EXYNOS:Z

    if-eqz v5, :cond_1

    const-string v5, "(EXYNOS)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    :cond_1
    sget-boolean v5, Lcom/android/internal/telephony/TelephonyFeatures;->IS_MTK:Z

    if-eqz v5, :cond_2

    const-string v5, "(MTK)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->DEVICE_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    sget-boolean v5, Lcom/android/internal/telephony/TelephonyFeatures;->IS_PHONE:Z

    if-eqz v5, :cond_3

    const-string v5, "(Phone)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    :cond_3
    sget-boolean v5, Lcom/android/internal/telephony/TelephonyFeatures;->IS_TABLET:Z

    if-eqz v5, :cond_4

    const-string v5, "(Tablet)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    :cond_4
    sget-boolean v5, Lcom/android/internal/telephony/TelephonyFeatures;->IS_WATCH:Z

    if-eqz v5, :cond_5

    const-string v5, "(Watch)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    :cond_5
    sget-boolean v5, Lcom/android/internal/telephony/TelephonyFeatures;->IS_WIFI_ONLY:Z

    if-eqz v5, :cond_6

    const-string v5, ", wifi-only"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorConfigurationTracker()Lcom/android/internal/telephony/VendorConfigurationTracker;

    move-result-object v5

    const/4 v6, -0x1

    if-eqz v5, :cond_7

    .line 537
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorConfigurationTracker()Lcom/android/internal/telephony/VendorConfigurationTracker;

    move-result-object v5

    const-string v7, "SUPPORTED_RAT"

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/VendorConfigurationTracker;->getConfigDataAsInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_7
    move v5, v6

    :goto_0
    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v5, v6, :cond_e

    .line 547
    const-string v6, ", RAT: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v6, v5, 0x2

    if-ne v6, v8, :cond_8

    .line 548
    const-string v6, "C"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    and-int/lit8 v6, v5, 0x4

    if-ne v6, v7, :cond_9

    .line 549
    const-string v6, "E"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    and-int/lit8 v6, v5, 0x1

    if-ne v6, v9, :cond_a

    .line 550
    const-string v6, "G"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    and-int/lit8 v6, v5, 0x8

    const/16 v10, 0x8

    if-ne v6, v10, :cond_b

    .line 551
    const-string v6, "W"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    and-int/lit8 v6, v5, 0x20

    const/16 v10, 0x20

    if-ne v6, v10, :cond_c

    .line 552
    const-string v6, "L"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    and-int/lit8 v6, v5, 0x40

    if-ne v6, v2, :cond_d

    .line 553
    const-string v2, "N"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const/16 v2, 0x10

    and-int/2addr v5, v2

    if-ne v5, v2, :cond_e

    .line 554
    const-string v2, "T"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    :cond_e
    const-string v2, ", Slot: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 562
    const-string v2, " Binary="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ro.build.changelist"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    const-string v2, "ro.system.qb.id"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 564
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 565
    const-string v5, ", SID"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    :cond_f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    sget-boolean v2, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-eqz v2, :cond_10

    const-string v2, ", Ship"

    goto :goto_1

    :cond_10
    const-string v2, ", Non-Ship"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_11

    const-string v2, ", Debuggable"

    goto :goto_2

    :cond_11
    const-string v2, ", Non-debuggable"

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    const-string v2, ", API: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 571
    const-string v4, ", VendorAPI: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ro.vendor.api_level"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 572
    const-string v2, ", ONEUI: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/internal/telephony/SemTelephonyUtils;->ONEUI_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    const-string v2, ", HAL {Voice: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v4, 0x6

    invoke-static {v2, v4}, Lcom/android/internal/telephony/TelephonyLogUtils;->getHalVersionString(Lcom/android/internal/telephony/Phone;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    const-string v2, ", Network: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2, v7}, Lcom/android/internal/telephony/TelephonyLogUtils;->getHalVersionString(Lcom/android/internal/telephony/Phone;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    const-string v2, ", IMS: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v4, 0x7

    invoke-static {v2, v4}, Lcom/android/internal/telephony/TelephonyLogUtils;->getHalVersionString(Lcom/android/internal/telephony/Phone;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    const-string v2, ", Modem: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v4, 0x3

    invoke-static {v2, v4}, Lcom/android/internal/telephony/TelephonyLogUtils;->getHalVersionString(Lcom/android/internal/telephony/Phone;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1, v9}, Lcom/android/internal/telephony/TelephonyLogUtils;->getHalVersionString(Lcom/android/internal/telephony/Phone;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    const-string v1, ", SIM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/android/internal/telephony/TelephonyLogUtils;->getHalVersionString(Lcom/android/internal/telephony/Phone;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    const-string v1, ", Messaging: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1, v8}, Lcom/android/internal/telephony/TelephonyLogUtils;->getHalVersionString(Lcom/android/internal/telephony/Phone;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    const-string v1, ", Radio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/TelephonyLogUtils;->getHalVersionString(Lcom/android/internal/telephony/Phone;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-static {}, Lcom/android/internal/telephony/SemTelephonyTester;->isTestAllowed()Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, ", STT_Allowed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    :cond_12
    invoke-static {}, Lcom/android/internal/telephony/SemTelephonyTester;->isTestEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, ", STT_Enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    :cond_13
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->isVendorTestEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, ", P_Enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    :cond_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 588
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    if-eqz v0, :cond_18

    .line 590
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 591
    const-string v5, " Feature="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    const-string v5, "SecProductFeatures: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "vzwcdmaless lracdmaless uscacgcdmaless xaacdmaless onebinary satellite_carrier"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "), "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    const-string v5, "PackageManager: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    sget-object v5, Lcom/android/internal/telephony/TelephonyLogger;->TELEPHONY_FEATURES:[Ljava/lang/String;

    array-length v6, v5

    :goto_3
    if-ge v2, v6, :cond_17

    aget-object v7, v5, v2

    .line 595
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 597
    const-string v8, "android.hardware.telephony"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    const-string v10, " "

    if-eqz v9, :cond_15

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_15

    .line 598
    invoke-static {v8}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 601
    :cond_15
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 605
    :cond_17
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 611
    :cond_18
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyHelper;->getSimOperatorNumericForPhone(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v0

    .line 612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 613
    const-string v1, " SIM="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    const-string v1, ", CarrierId: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getCarrierName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    const-string v4, ", SpecificCarrierId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSpecificCarrierId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSpecificCarrierName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    const-string v1, ", MnoCarrierId: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getMNOCarrierId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 617
    const-string v1, ", CarrierIdFromMccMnc: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/telephony/CarrierResolver;->getCarrierIdFromMccMnc(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 618
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, " Network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 623
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 624
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 626
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 627
    const-string p2, " LastDialInfo Log:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 629
    iget-object p2, p0, Lcom/android/internal/telephony/TelephonyLogger;->mLastDialInfoLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 630
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 631
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 633
    const-string p2, " Call Log:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 635
    iget-object p2, p0, Lcom/android/internal/telephony/TelephonyLogger;->mCallLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 636
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 637
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 639
    const-string p2, " ImsCommon Flow Log:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 640
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 641
    iget-object p2, p0, Lcom/android/internal/telephony/TelephonyLogger;->mImsCommonLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 642
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 643
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 645
    const-string p2, " ImsRegi Flow Log:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 647
    iget-object p2, p0, Lcom/android/internal/telephony/TelephonyLogger;->mImsRegiLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 648
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 649
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 651
    const-string p2, " ImsUt Flow Log:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 652
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 653
    iget-object p2, p0, Lcom/android/internal/telephony/TelephonyLogger;->mImsUtLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 654
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 655
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 657
    const-string p2, " ImsExternal Flow Log:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 658
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 659
    iget-object p2, p0, Lcom/android/internal/telephony/TelephonyLogger;->mImsExternalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 660
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 661
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 663
    const-string p2, " CMC Flow Log:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 664
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 665
    iget-object p2, p0, Lcom/android/internal/telephony/TelephonyLogger;->mCmcLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 666
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 667
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 669
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Satellite Merged Log("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/internal/telephony/TelephonyLogger;->ENABLE_SATELLITE_MERGED_LOG:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 670
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 671
    iget-object p2, p0, Lcom/android/internal/telephony/TelephonyLogger;->mSatelliteMergedLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 672
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 673
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 675
    const-string p2, " Satellite Modem Flow Log:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 676
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 677
    iget-object p2, p0, Lcom/android/internal/telephony/TelephonyLogger;->mSatelliteModemLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 678
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 679
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 681
    const-string p2, " SatelliteSessionController Flow Log:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 682
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 683
    iget-object p2, p0, Lcom/android/internal/telephony/TelephonyLogger;->mSatelliteSessionControllerLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 684
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 685
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 687
    const-string p2, " SatelliteController Flow Log:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 688
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 689
    iget-object p2, p0, Lcom/android/internal/telephony/TelephonyLogger;->mSatelliteControllerLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 690
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 691
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 693
    const-string p2, " Satellite Modem Position Changed Flow Log:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 694
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 695
    iget-object p2, p0, Lcom/android/internal/telephony/TelephonyLogger;->mSatelliteModemPositionChangedLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 696
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 697
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 699
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSupportTiantong()Z

    move-result p2

    if-eqz p2, :cond_19

    .line 700
    const-string p2, " SemSatelliteCallTracker Flow Log:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 701
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 702
    iget-object p2, p0, Lcom/android/internal/telephony/TelephonyLogger;->mSemSatelliteCallTrackerLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 703
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 704
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 707
    :cond_19
    const-string p2, " Booting Log:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 708
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 709
    iget-object p2, p0, Lcom/android/internal/telephony/TelephonyLogger;->mBootingLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 710
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 711
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 713
    const-string p2, " Check Point Log:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 714
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 715
    iget-object p2, p0, Lcom/android/internal/telephony/TelephonyLogger;->mCheckPointLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 716
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 717
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 719
    const-string p2, " Connection History Log:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 720
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 721
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mConnectionHistoryLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 722
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 723
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public blacklist getSatellitePhoneId()I
    .locals 0

    .line 203
    iget p0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mSatellitePhoneId:I

    return p0
.end method

.method public blacklist setSatellitePhoneId(I)V
    .locals 0

    .line 199
    iput p1, p0, Lcom/android/internal/telephony/TelephonyLogger;->mSatellitePhoneId:I

    return-void
.end method

.method protected blacklist writeBootingLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 404
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    sget-object v0, Lcom/android/internal/telephony/TelephonyLogger;->sBootingLogMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 407
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignore unregistered log: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyLogger;->log(Ljava/lang/String;)V

    return-void

    .line 411
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/TelephonyLogger;->mKeyCompleted:I

    const/4 v2, 0x7

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 412
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Logging is finished: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyLogger;->log(Ljava/lang/String;)V

    return-void

    .line 416
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 418
    iget v1, p0, Lcom/android/internal/telephony/TelephonyLogger;->mKeyCompleted:I

    and-int v3, v1, v0

    const-string v4, ", completed: 0x"

    const-string v5, "\', key: "

    if-ne v3, v0, :cond_2

    .line 419
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignore duplicated log - \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/TelephonyLogger;->mKeyCompleted:I

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyLogger;->log(Ljava/lang/String;)V

    return-void

    :cond_2
    or-int/2addr v1, v0

    .line 423
    iput v1, p0, Lcom/android/internal/telephony/TelephonyLogger;->mKeyCompleted:I

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Booting log - \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/TelephonyLogger;->mKeyCompleted:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/TelephonyLogger;->log(Ljava/lang/String;)V

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 427
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    const-string v4, "0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/TelephonyLogger;->mKeyCompleted:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 431
    const-string v2, ", Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    const-string v2, ", First Timezone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->sys_timezone()Ljava/util/Optional;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    :cond_3
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mBootingLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    const/4 p0, 0x2

    if-eq v0, p0, :cond_5

    const/4 p0, 0x4

    if-ne v0, p0, :cond_4

    goto :goto_0

    :cond_4
    return-void

    .line 438
    :cond_5
    :goto_0
    const-string p0, "!@Boot_SVC"

    const-string v0, "!@Boot_EBS_N"

    invoke-virtual {p2, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist writeCheckPointLog(Ljava/lang/String;)V
    .locals 0

    .line 449
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mCheckPointLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist writeConnectionHistoryLog(Ljava/lang/String;)V
    .locals 0

    .line 454
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mConnectionHistoryLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public varargs blacklist writeFlowLogFromChinaSatellite(IILjava/lang/String;I[Ljava/lang/Object;)V
    .locals 7

    .line 189
    iget v3, p0, Lcom/android/internal/telephony/TelephonyLogger;->mSatellitePhoneId:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/TelephonyLogger;->makeFlowLog(IIILjava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 192
    const-string p1, "CSTF"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/TelephonyLogger;->writeFlowLog(ILjava/lang/String;)V

    return-void
.end method

.method public varargs blacklist writeFlowLogFromImsPhone(IILjava/lang/String;I[Ljava/lang/Object;)V
    .locals 8

    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/TelephonyLogger;->makeFlowLog(IIILjava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x6

    if-eq v2, p1, :cond_0

    .line 171
    const-string p1, "IPF"

    goto :goto_0

    :cond_0
    const-string p1, "CMCF"

    :goto_0
    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-direct {v1, v2, p0}, Lcom/android/internal/telephony/TelephonyLogger;->writeFlowLog(ILjava/lang/String;)V

    return-void
.end method

.method protected blacklist writeFlowLogFromRilRequest(ILjava/lang/String;)V
    .locals 1

    .line 230
    sget-object v0, Lcom/android/internal/telephony/TelephonyLogger;->sPatternCallList:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 233
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mIgnoreNextBlankCallList:Z

    goto :goto_0

    .line 235
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyLogger;->sPatternBlankCallList:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mIgnoreNextBlankCallList:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 241
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mIgnoreNextBlankCallList:Z

    .line 249
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/TelephonyLogger;->writeFlowLog(ILjava/lang/String;)V

    return-void
.end method

.method public varargs blacklist writeFlowLogFromSatellite(IILjava/lang/String;I[Ljava/lang/Object;)V
    .locals 7

    .line 179
    iget v3, p0, Lcom/android/internal/telephony/TelephonyLogger;->mSatellitePhoneId:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/TelephonyLogger;->makeFlowLog(IIILjava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 182
    const-string p1, "STF"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/TelephonyLogger;->writeFlowLog(ILjava/lang/String;)V

    return-void
.end method

.method protected blacklist writeLastDialInfoLog(Ljava/lang/String;)V
    .locals 0

    .line 444
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mLastDialInfoLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

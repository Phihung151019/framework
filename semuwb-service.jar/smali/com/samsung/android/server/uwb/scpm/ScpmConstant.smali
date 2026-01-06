.class public Lcom/samsung/android/server/uwb/scpm/ScpmConstant;
.super Ljava/lang/Object;
.source "ScpmConstant.java"


# static fields
.field public static final ACTION_LAZY_BOOT_COMPLETE:Ljava/lang/String; = "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

.field public static final ACTION_SCPM_CLEAR_DATA:Ljava/lang/String; = "com.samsung.android.scpm.policy.CLEAR_DATA"

.field public static final ACTION_UWB_POLICY_UPDATED:Ljava/lang/String; = "com.samsung.android.scpm.policy.UPDATE.UWB_REGULATION"

.field public static final APP_ID:Ljava/lang/String; = "qmovny2fm5"

.field public static final CONFIGFILENAME_UOS:Ljava/lang/String; = "libuwb-countrycode.conf"

.field public static final CONF_FILE:Ljava/lang/String; = "/data/uwb/scpm/libuwb-countrycode.conf"

.field public static DBG:Z = false

.field public static final DEFAULT_SCPM_VERSION:Ljava/lang/String; = "01"

.field public static final DO_NOTHING:I = 0x0

.field public static final FAIL:I = 0x2

.field public static final MILLIS_PER_MINUTE:I = 0xea60

.field public static final REGULATION_POLICY:Ljava/lang/String; = "UWB_REGULATION"

.field public static final RESULT_DONOTHING:Ljava/lang/String; = "DO NOTHING"

.field public static final RESULT_FAIL:Ljava/lang/String; = "FAIL"

.field public static final RESULT_SUCCESS:Ljava/lang/String; = "SUCCESS"

.field public static final RESULT_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field public static final SCPM_DIRECTORY:Ljava/lang/String; = "/data/uwb/scpm"

.field public static final SUCCESS:I = 0x1

.field public static final VENDOR_DIRECTORY:Ljava/lang/String; = "/vendor/etc/"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/uwb/scpm/ScpmConstant;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

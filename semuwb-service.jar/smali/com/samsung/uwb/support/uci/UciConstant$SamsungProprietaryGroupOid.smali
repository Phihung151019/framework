.class public Lcom/samsung/uwb/support/uci/UciConstant$SamsungProprietaryGroupOid;
.super Ljava/lang/Object;
.source "UciConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/uwb/support/uci/UciConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamsungProprietaryGroupOid"
.end annotation


# static fields
.field public static final CCC_DEBUG_NOTIFICATION:B = 0x36t

.field public static final DELETE_URSK:B = 0x1t

.field public static final DO_VCO_PLL_CALIBRATION:B = 0x20t

.field public static final ESE_BINDING:B = 0x31t

.field public static final ESE_BINDING_CHECK:B = 0x32t

.field public static final ESE_CONNECTIVITY:B = 0x30t

.field public static final GET_ALL_UWB_SESSIONS_INFO:B = 0x2t

.field public static final GET_DEVICE_CALIBRATION:B = 0x22t

.field public static final GET_VENDOR_APP_CONFIGURATION:B = 0x3t

.field public static final SET_DEVICE_CALIBRATION:B = 0x21t

.field public static final SET_SECURE_CALIBRATION:B = 0x23t

.field public static final SET_VENDOR_APP_CONFIGURATION:B = 0x0t

.field public static final UWBS_SLEEP_ENTRY_PREVENTION:B = 0x35t

.field public static final UWB_WLAN_COEX_MAX_GRANT_DURATION_EXCEEDED_WRN_NTF:B = 0x3bt

.field public static final UWB_WLAN_IND_STATUS_NTF:B = 0x39t

.field public static final WLAN_UWB_IND_STATUS_NTF:B = 0x3at

.field public static final WRITE_COUNTRY_CODE_POLICY:B = 0x37t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

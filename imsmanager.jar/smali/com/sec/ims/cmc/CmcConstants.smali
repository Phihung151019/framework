.class public Lcom/sec/ims/cmc/CmcConstants;
.super Ljava/lang/Object;
.source "CmcConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/cmc/CmcConstants$CallType;,
        Lcom/sec/ims/cmc/CmcConstants$DialogCallState;,
        Lcom/sec/ims/cmc/CmcConstants$Oir;,
        Lcom/sec/ims/cmc/CmcConstants$HoldDirection;,
        Lcom/sec/ims/cmc/CmcConstants$CallDirection;,
        Lcom/sec/ims/cmc/CmcConstants$RejectReason;,
        Lcom/sec/ims/cmc/CmcConstants$EndReason;,
        Lcom/sec/ims/cmc/CmcConstants$TelephonyState;,
        Lcom/sec/ims/cmc/CmcConstants$DisconnectCause;
    }
.end annotation


# static fields
.field public static final EXTRA_OEM_EXTRAS:Ljava/lang/String; = "android.telephony.ims.extra.OEM_EXTRAS"

.field public static final SEM_CALL_EXTRA_SEM_CMC_TYPE:Ljava/lang/String; = "com.samsung.telephony.extra.CMC_TYPE"

.field public static final SEM_CMC_TYPE_NONE:I = 0x0

.field public static final SEM_CMC_TYPE_PRIMARY_DEVICE:I = 0x1

.field public static final SEM_CMC_TYPE_SECONDARY_DEVICE:I = 0x2

.field public static final SEM_EXTRA_CMC_DEVICE_ID:Ljava/lang/String; = "com.samsung.telephony.extra.CMC_DEVICE_ID"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

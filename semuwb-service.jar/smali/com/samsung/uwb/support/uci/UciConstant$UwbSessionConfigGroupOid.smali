.class public Lcom/samsung/uwb/support/uci/UciConstant$UwbSessionConfigGroupOid;
.super Ljava/lang/Object;
.source "UciConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/uwb/support/uci/UciConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UwbSessionConfigGroupOid"
.end annotation


# static fields
.field public static final SESSION_DEINIT:B = 0x1t

.field public static final SESSION_GET_APP_CONFIG:B = 0x4t

.field public static final SESSION_GET_COUNT:B = 0x5t

.field public static final SESSION_GET_STATE:B = 0x6t

.field public static final SESSION_INIT:B = 0x0t

.field public static final SESSION_QUERY_DATA_SIZE_IN_RANGING:B = 0xbt

.field public static final SESSION_SET_APP_CONFIG:B = 0x3t

.field public static final SESSION_SET_HUS_CONTROLEE_CONFIG:B = 0xdt

.field public static final SESSION_SET_HUS_CONTROLLER_CONFIG:B = 0xct

.field public static final SESSION_SET_INITIATOR_DT_ANCHOR_RR_RDM_LIST_RSP:B = 0xat

.field public static final SESSION_STATUS_NTF:B = 0x2t

.field public static final SESSION_UPDATE_ACTIVE_ROUNDS_ANCHOR:B = 0x8t

.field public static final SESSION_UPDATE_ACTIVE_ROUNDS_DT_TAG:B = 0x9t

.field public static final SESSION_UPDATE_CONTROLLER_MULTICAST_LIST:B = 0x7t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

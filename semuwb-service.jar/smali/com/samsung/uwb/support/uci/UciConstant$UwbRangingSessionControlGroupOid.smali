.class public Lcom/samsung/uwb/support/uci/UciConstant$UwbRangingSessionControlGroupOid;
.super Ljava/lang/Object;
.source "UciConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/uwb/support/uci/UciConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UwbRangingSessionControlGroupOid"
.end annotation


# static fields
.field public static final RANGE_GET_RANGING_COUNT:B = 0x3t

.field public static final RANGE_START:B = 0x0t

.field public static final RANGE_STOP:B = 0x1t

.field public static final SESSION_DATA_CREDIT_NTF:B = 0x4t

.field public static final SESSION_DATA_TRANSFER_STATUS_NTF:B = 0x5t

.field public static final SESSION_ROLE_CHANGE_NTF:B = 0x6t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

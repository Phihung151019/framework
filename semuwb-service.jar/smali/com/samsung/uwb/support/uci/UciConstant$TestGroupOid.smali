.class public Lcom/samsung/uwb/support/uci/UciConstant$TestGroupOid;
.super Ljava/lang/Object;
.source "UciConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/uwb/support/uci/UciConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TestGroupOid"
.end annotation


# static fields
.field public static final TEST_CONFIG_GET:B = 0x1t

.field public static final TEST_CONFIG_SET:B = 0x0t

.field public static final TEST_LOOPBACK:B = 0x6t

.field public static final TEST_PERIODIC_TX:B = 0x2t

.field public static final TEST_PER_RX:B = 0x3t

.field public static final TEST_RX:B = 0x5t

.field public static final TEST_SS_TWR:B = 0x8t

.field public static final TEST_STOP_SESSION:B = 0x7t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

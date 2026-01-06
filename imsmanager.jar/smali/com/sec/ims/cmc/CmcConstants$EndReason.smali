.class public Lcom/sec/ims/cmc/CmcConstants$EndReason;
.super Ljava/lang/Object;
.source "CmcConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/cmc/CmcConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EndReason"
.end annotation


# static fields
.field public static final CALL_BUSY:I = 0x10

.field public static final IMS_DEREGISTERED:I = 0xe

.field public static final LOST_LTE_WIFI_CONNECTION:I = 0xc

.field public static final LOW_BATTERY:I = 0x6

.field public static final NORMAL:I = 0x1a

.field public static final OUT_OF_BATTERY:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

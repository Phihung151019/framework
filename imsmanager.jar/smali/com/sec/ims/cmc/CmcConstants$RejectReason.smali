.class public Lcom/sec/ims/cmc/CmcConstants$RejectReason;
.super Ljava/lang/Object;
.source "CmcConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/cmc/CmcConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RejectReason"
.end annotation


# static fields
.field public static final E911_NOT_ALLOWED_ON_SD:I = 0xf

.field public static final LOW_BATTERY:I = 0x6

.field public static final NO_ANSWER:I = 0xd

.field public static final TEMP_NOT_ACCEPTABLE:I = 0x9

.field public static final UESR_UNWANTED:I = 0x10

.field public static final USER_BUSY:I = 0x2

.field public static final USER_CALL_BLOCK:I = 0xc

.field public static final USER_DECLINE:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

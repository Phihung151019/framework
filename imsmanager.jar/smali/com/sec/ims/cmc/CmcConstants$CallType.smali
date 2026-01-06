.class public Lcom/sec/ims/cmc/CmcConstants$CallType;
.super Ljava/lang/Object;
.source "CmcConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/cmc/CmcConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallType"
.end annotation


# static fields
.field public static final CALL_TYPE_CONFERENCE:I = 0x3

.field public static final CALL_TYPE_EMERGENCY:I = 0x4

.field public static final CALL_TYPE_VOICE:I = 0x1

.field public static final CALL_TYPE_VT:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

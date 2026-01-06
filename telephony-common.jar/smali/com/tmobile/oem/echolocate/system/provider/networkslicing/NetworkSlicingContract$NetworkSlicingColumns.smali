.class public Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingContract$NetworkSlicingColumns;
.super Ljava/lang/Object;
.source "NetworkSlicingContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkSlicingColumns"
.end annotation


# static fields
.field public static final blacklist _ID:Ljava/lang/String; = "_id"

.field public static final blacklist bandNumber:Ljava/lang/String; = "bandNumber"

.field public static final blacklist cellId:Ljava/lang/String; = "cellId"

.field public static final blacklist consumed:Ljava/lang/String; = "consumed"

.field public static final blacklist rsrp:Ljava/lang/String; = "rsrp"

.field public static final blacklist sD:Ljava/lang/String; = "sD"

.field public static final blacklist sST:Ljava/lang/String; = "sST"

.field public static final blacklist techType:Ljava/lang/String; = "techType"

.field public static final blacklist time:Ljava/lang/String; = "timeStamp"

.field public static final blacklist urspRule:Ljava/lang/String; = "urspRule"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

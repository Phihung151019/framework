.class public Lcom/tmobile/oem/echolocate/system/provider/trafficstats/TrafficStatsContract$TrafficStatsColumns;
.super Ljava/lang/Object;
.source "TrafficStatsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmobile/oem/echolocate/system/provider/trafficstats/TrafficStatsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrafficStatsColumns"
.end annotation


# static fields
.field public static final blacklist DNSType:Ljava/lang/String; = "DNSType"

.field public static final blacklist _ID:Ljava/lang/String; = "_id"

.field public static final blacklist bandNumber:Ljava/lang/String; = "bandNumber"

.field public static final blacklist cellId:Ljava/lang/String; = "cellId"

.field public static final blacklist consumed:Ljava/lang/String; = "consumed"

.field public static final blacklist networkDetail:Ljava/lang/String; = "networkDetail"

.field public static final blacklist responseCode:Ljava/lang/String; = "responseCode"

.field public static final blacklist responseTime:Ljava/lang/String; = "responseTime"

.field public static final blacklist rsrp:Ljava/lang/String; = "rsrp"

.field public static final blacklist source:Ljava/lang/String; = "IPAddress"

.field public static final blacklist techType:Ljava/lang/String; = "techType"

.field public static final blacklist time:Ljava/lang/String; = "timeStamp"

.field public static final blacklist transactionID:Ljava/lang/String; = "transactionID"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

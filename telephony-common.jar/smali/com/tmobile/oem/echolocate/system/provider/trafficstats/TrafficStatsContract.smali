.class public Lcom/tmobile/oem/echolocate/system/provider/trafficstats/TrafficStatsContract;
.super Ljava/lang/Object;
.source "TrafficStatsContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tmobile/oem/echolocate/system/provider/trafficstats/TrafficStatsContract$TrafficStatsColumns;
    }
.end annotation


# static fields
.field public static final blacklist AUTHORITY:Ljava/lang/String; = "com.tmobile.oem.echolocate.system.provider"

.field public static final blacklist CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist DATABASE:Ljava/lang/String; = "echolocate_system_network_db"

.field public static final blacklist MULTIPLE_RECORD_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.com.tmobile.oem.echolocate.system.provider_trafficstats_2"

.field public static final blacklist SCHEME:Ljava/lang/String; = "content://"

.field public static final blacklist SINGLE_RECORD_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.com.tmobile.oem.echolocate.system.provider_trafficstats_2"

.field public static final blacklist TABLE:Ljava/lang/String; = "trafficstats"

.field public static final blacklist TABLE_MAX:I = 0x7d0

.field public static final blacklist VERSION:I = 0x2


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 11
    const-string v0, "content://com.tmobile.oem.echolocate.system.provider/trafficstats"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tmobile/oem/echolocate/system/provider/trafficstats/TrafficStatsContract;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

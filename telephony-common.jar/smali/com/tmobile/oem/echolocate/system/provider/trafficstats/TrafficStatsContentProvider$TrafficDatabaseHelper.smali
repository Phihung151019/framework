.class public Lcom/tmobile/oem/echolocate/system/provider/trafficstats/TrafficStatsContentProvider$TrafficDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TrafficStatsContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmobile/oem/echolocate/system/provider/trafficstats/TrafficStatsContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrafficDatabaseHelper"
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 227
    const-string v2, "echolocate_system_network_db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public whitelist onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 233
    const-string p0, "TrafficStatsContentProvider"

    const-string v0, "TrafficDatabaseHelper - onCreate()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string p0, " CREATE TABLE trafficstats (_id INTEGER PRIMARY KEY AUTOINCREMENT,  cellId INTEGER NOT NULL, rsrp REAL NOT NULL, techType TEXT NOT NULL, networkDetail TEXT NOT NULL, bandNumber TEXT NOT NULL, timeStamp TEXT NOT NULL, transactionID INTEGER NOT NULL, DNSType TEXT NOT NULL, IPAddress TEXT NOT NULL, responseTime INTEGER NOT NULL, responseCode INTEGER NOT NULL, consumed TEXT NOT NULL);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-wide/32 v0, 0x1400000

    .line 235
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setMaximumSize(J)J

    return-void
.end method

.method public whitelist onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const/4 p0, 0x2

    if-ge p2, p0, :cond_0

    .line 242
    const-string p0, "ALTER TABLE trafficstats ADD COLUMN networkDetail TEXT"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 243
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, " TrafficDatabaseHelper - onUpgrade() - oldVersion ="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " newVersion ="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TrafficStatsContentProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

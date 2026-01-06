.class public Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingContentProvider$NetworkSlicingDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "NetworkSlicingContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkSlicingDatabaseHelper"
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 214
    const-string v2, "echolocate_system_networkslicing_db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public whitelist onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 220
    const-string p0, "NetworkSlicingContentProvider"

    const-string v0, "NetworkslicingDatabaseHelper - onCreate()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string p0, " CREATE TABLE networkslicing (_id INTEGER PRIMARY KEY AUTOINCREMENT,  cellId INTEGER NOT NULL, rsrp REAL NOT NULL, techType TEXT NOT NULL, bandNumber TEXT NOT NULL, sST TEXT NOT NULL, sD TEXT NOT NULL, urspRule TEXT NOT NULL, timeStamp TEXT NOT NULL, consumed TEXT NOT NULL);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-wide/32 v0, 0x1400000

    .line 222
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setMaximumSize(J)J

    return-void
.end method

.method public whitelist onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 228
    const-string v0, "DROP TABLE IF EXISTS networkslicing"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " NetworkslicingDatabaseHelper - onUpgrade() - oldVersion ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " newVersion ="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "NetworkSlicingContentProvider"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p0, p1}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingContentProvider$NetworkSlicingDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

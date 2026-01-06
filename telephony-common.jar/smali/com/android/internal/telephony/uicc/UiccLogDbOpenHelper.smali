.class public Lcom/android/internal/telephony/uicc/UiccLogDbOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "UiccLogDbOpenHelper.java"


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 21
    const-string v2, "uicc_log.db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public whitelist onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 26
    const-string p0, "CREATE TABLE IF NOT EXISTS uicclog (_id INTEGER PRIMARY KEY,time TIMESTAMP DEFAULT (datetime(\'now\',\'localtime\')) NOT NULL,log TEXT NOT NULL)"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 31
    const-string p2, "DROP TABLE IF EXISTS uicclog"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccLogDbOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

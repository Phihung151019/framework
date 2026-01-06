.class public Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;
.super Landroid/os/Handler;
.source "SemTelephonyDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$DatabaseEntry;,
        Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;,
        Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$Key;,
        Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$KeyMax;,
        Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$DatabaseData;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SemTelephonyDatabaseHelper"

.field private static volatile blacklist mInstance:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

.field private static blacklist mKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDbLoader:[Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;

.field private greylist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mMaxSlot:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mKeyMap:Ljava/util/Map;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;ILandroid/os/Looper;)V
    .locals 4

    .line 186
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p3, 0x0

    .line 76
    iput-object p3, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mDbLoader:[Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;

    .line 143
    new-instance p3, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$1;

    invoke-direct {p3, p0}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$1;-><init>(Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;)V

    iput-object p3, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 187
    iput-object p1, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mContext:Landroid/content/Context;

    .line 188
    iput p2, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mMaxSlot:I

    .line 190
    iget-object p3, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mDbLoader:[Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;

    if-nez p3, :cond_1

    .line 191
    new-array p2, p2, [Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;

    iput-object p2, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mDbLoader:[Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;

    const/4 p2, 0x0

    .line 192
    :goto_0
    iget p3, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mMaxSlot:I

    if-ge p2, p3, :cond_0

    .line 193
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    const-string v0, "telephony_database_slot"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ".db"

    .line 196
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mDbLoader:[Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;

    new-instance v1, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    sget-object v2, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;->FRAMEWORK:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;

    const/4 v3, 0x1

    invoke-direct {v1, p1, p3, v3, v2}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;)V

    aput-object v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->initIntentFilter()V

    .line 202
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->initKeyMap()V

    :cond_1
    return-void
.end method

.method private blacklist checkTheNumberOfValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 253
    :cond_0
    sget-object p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mKeyMap:Ljava/util/Map;

    if-eqz p0, :cond_1

    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 254
    sget-object p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mKeyMap:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_1
    const/16 p0, 0xa

    .line 258
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select * from telephony_info where key=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 262
    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p2, :cond_3

    .line 263
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 264
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v1, p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    .line 268
    invoke-interface {p2, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    if-lez p0, :cond_3

    .line 270
    const-string v1, "telephony_info"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, p2

    goto :goto_3

    :catch_0
    move-object v0, p2

    goto :goto_4

    :cond_3
    :goto_1
    if-eqz p2, :cond_5

    .line 277
    :goto_2
    :try_start_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    return-void

    :catchall_1
    move-exception p0

    :goto_3
    if-eqz v0, :cond_4

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 280
    :catch_1
    :cond_4
    throw p0

    :catch_2
    :goto_4
    if-eqz v0, :cond_5

    .line 277
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_5
    :goto_5
    return-void
.end method

.method private blacklist deleteFirstRow(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    if-nez p1, :cond_0

    goto :goto_3

    .line 366
    :cond_0
    const-string p0, "select * from telephony_info"

    const/4 v0, 0x0

    .line 370
    :try_start_0
    invoke-virtual {p1, p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_1

    .line 371
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 372
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_1

    .line 374
    const-string v2, "telephony_info"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_1

    :catch_0
    move-object v0, p0

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz p0, :cond_3

    .line 381
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    return-void

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_2

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 384
    :catch_1
    :cond_2
    throw p1

    :catch_2
    :goto_2
    if-eqz v0, :cond_3

    .line 381
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_3
    :goto_3
    return-void
.end method

.method private declared-synchronized blacklist dumpVendor(ILjava/io/PrintWriter;)V
    .locals 6

    monitor-enter p0

    .line 388
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 389
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "semTelephonyDatabase["

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 392
    const-string p2, "select * from semTelephonyDatabase order by key"

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/vendor/secradio/sem_database_"

    .line 401
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".db"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 404
    new-instance v1, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;->VENDOR:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;

    const/4 v4, 0x1

    invoke-direct {v1, v2, p1, v4, v3}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    .line 412
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v2, :cond_1

    .line 414
    :try_start_2
    invoke-virtual {v2, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 415
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 417
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Date: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "|Key: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "|Value: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    .line 420
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 422
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 429
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_0
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 435
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 441
    :catch_1
    :cond_3
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catchall_2
    move-exception p2

    move-object v2, p1

    :goto_3
    if-eqz p1, :cond_4

    .line 429
    :try_start_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_2
    :cond_4
    if-eqz v2, :cond_5

    .line 435
    :try_start_7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 441
    :catch_3
    :cond_5
    :try_start_8
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 444
    :catch_4
    :try_start_9
    throw p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catch_5
    move-object v2, p1

    :catch_6
    if-eqz p1, :cond_6

    .line 429
    :try_start_a
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catch_7
    :cond_6
    if-eqz v2, :cond_3

    .line 435
    :try_start_b
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_2

    .line 445
    :catch_8
    :goto_4
    :try_start_c
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 446
    monitor-exit p0

    return-void

    :goto_5
    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw p1
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;
    .locals 1

    .line 242
    sget-object v0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mInstance:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

    return-object v0
.end method

.method private blacklist initIntentFilter()V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 208
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.mobiledoctor.GETAPMDATAFILES"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private blacklist initKeyMap()V
    .locals 3

    .line 214
    sget-object p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mKeyMap:Ljava/util/Map;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x32

    .line 218
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "airplane_mode_status"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mKeyMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "nitz_status"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mKeyMap:Ljava/util/Map;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "set_preferred_network_mode"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mKeyMap:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "shutdown"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mKeyMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tmo_device_config"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mKeyMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "allow_nettype_list"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mKeyMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "nr_mode_changed"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mKeyMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ril_monitor_reset_rild"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mKeyMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "multi_time_zone_popup"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mKeyMap:Ljava/util/Map;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "disallow_2g"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static blacklist make(Landroid/content/Context;ILandroid/os/Looper;)Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;
    .locals 2

    .line 231
    sget-object v0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mInstance:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

    if-nez v0, :cond_1

    .line 232
    const-class v0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

    monitor-enter v0

    .line 233
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mInstance:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

    if-nez v1, :cond_0

    .line 234
    new-instance v1, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;-><init>(Landroid/content/Context;ILandroid/os/Looper;)V

    sput-object v1, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mInstance:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 236
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 238
    :cond_1
    :goto_2
    sget-object p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mInstance:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

    return-object p0
.end method

.method private blacklist makeCsDiagnosisFile()V
    .locals 10

    .line 511
    sget-object v0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeCsDiagnosisFile"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const-string v0, "/data/log/err/csdiag_airplane_mode_info.dat"

    .line 518
    const-string v1, "select * from telephony_info where key=\"airplane_mode_status\" order by date"

    .line 524
    iget-object v2, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mDbLoader:[Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    monitor-enter v2

    const/4 v4, 0x0

    .line 526
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 527
    :try_start_1
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 529
    :try_start_2
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mDbLoader:[Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;

    aget-object p0, p0, v3

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz p0, :cond_0

    .line 531
    :try_start_3
    invoke-virtual {p0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v4

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object v1, v4

    goto/16 :goto_3

    :cond_0
    move-object v1, v4

    :goto_0
    if-eqz v1, :cond_3

    .line 534
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 537
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x1

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 539
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 540
    invoke-virtual {v6, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v9, v4

    move-object v4, v1

    move-object v1, v9

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move-object v9, v4

    move-object v4, v1

    move-object v1, v9

    goto/16 :goto_3

    .line 542
    :cond_2
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 545
    :cond_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "chmod 664 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 547
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    if-eqz v1, :cond_5

    .line 554
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    goto/16 :goto_6

    :catch_2
    :cond_5
    :goto_2
    if-eqz p0, :cond_6

    .line 560
    :try_start_6
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 566
    :catch_3
    :cond_6
    :try_start_7
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 572
    :catch_4
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catch_5
    if-eqz v4, :cond_b

    .line 577
    :try_start_9
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_4

    :catchall_3
    move-exception v0

    move-object p0, v4

    move-object v1, p0

    goto :goto_5

    :catch_6
    move-exception v0

    move-object p0, v4

    move-object v1, p0

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object p0, v4

    move-object v1, p0

    move-object v6, v1

    goto :goto_5

    :catch_7
    move-exception v0

    move-object p0, v4

    move-object v1, p0

    move-object v6, v1

    goto :goto_3

    :catchall_5
    move-exception v0

    move-object p0, v4

    move-object v1, p0

    move-object v5, v1

    move-object v6, v5

    goto :goto_5

    :catch_8
    move-exception v0

    move-object p0, v4

    move-object v1, p0

    move-object v5, v1

    move-object v6, v5

    .line 550
    :goto_3
    :try_start_a
    sget-object v3, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "makeCsDiagnosisFile - Something wrong: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    if-eqz v4, :cond_7

    .line 554
    :try_start_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catch_9
    :cond_7
    if-eqz p0, :cond_8

    .line 560
    :try_start_c
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catch_a
    :cond_8
    if-eqz v6, :cond_9

    .line 566
    :try_start_d
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :catch_b
    :cond_9
    if-eqz v5, :cond_a

    .line 572
    :try_start_e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :catch_c
    :cond_a
    if-eqz v1, :cond_b

    .line 577
    :try_start_f
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 580
    :cond_b
    :goto_4
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    return-void

    :catchall_6
    move-exception v0

    :goto_5
    if-eqz v4, :cond_c

    .line 554
    :try_start_10
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_d
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :catch_d
    :cond_c
    if-eqz p0, :cond_d

    .line 560
    :try_start_11
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_e
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :catch_e
    :cond_d
    if-eqz v6, :cond_e

    .line 566
    :try_start_12
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_f
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :catch_f
    :cond_e
    if-eqz v5, :cond_f

    .line 572
    :try_start_13
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_10
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :catch_10
    :cond_f
    if-eqz v1, :cond_10

    .line 577
    :try_start_14
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 579
    :cond_10
    throw v0

    .line 580
    :goto_6
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    throw p0
.end method

.method private blacklist writeData(Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$DatabaseData;)V
    .locals 10

    if-nez p1, :cond_0

    goto/16 :goto_7

    .line 303
    :cond_0
    iget v0, p1, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$DatabaseData;->mSlot:I

    .line 305
    iget v1, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mMaxSlot:I

    if-ge v0, v1, :cond_b

    if-gez v0, :cond_1

    goto/16 :goto_7

    .line 309
    :cond_1
    iget-object v1, p1, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$DatabaseData;->mKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_7

    .line 313
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mDbLoader:[Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    goto/16 :goto_7

    .line 317
    :cond_3
    monitor-enter v1

    const/4 v2, 0x0

    .line 320
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mDbLoader:[Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;

    aget-object v0, v3, v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 321
    :try_start_1
    iget-object v3, p1, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$DatabaseData;->mKey:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->checkTheNumberOfValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 323
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 324
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 325
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 327
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 328
    const-string v5, "date"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v3, "key"

    iget-object v5, p1, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$DatabaseData;->mKey:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object p1, p1, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$DatabaseData;->mValue:[Ljava/lang/String;

    array-length v3, p1

    const/4 v5, 0x1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_6

    aget-object v7, p1, v6

    const/4 v8, 0x5

    if-gt v5, v8, :cond_4

    .line 334
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "value"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v2, v0

    goto :goto_3

    :catch_0
    move-object v2, v0

    goto :goto_4

    :cond_4
    if-eqz v0, :cond_5

    .line 353
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_6

    .line 354
    :catch_1
    :cond_5
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_7

    :cond_6
    if-eqz v0, :cond_7

    .line 343
    :try_start_4
    const-string p1, "telephony_info"

    invoke-virtual {v0, p1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_2

    :cond_7
    const-wide/16 v2, 0x0

    :goto_2
    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-ltz p1, :cond_8

    .line 347
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->deleteFirstRow(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    if-eqz v0, :cond_a

    .line 353
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :catchall_2
    move-exception p0

    :goto_3
    if-eqz v2, :cond_9

    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 356
    :catch_2
    :cond_9
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_3
    :goto_4
    if-eqz v2, :cond_a

    .line 353
    :try_start_8
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 357
    :catch_4
    :cond_a
    :goto_5
    :try_start_9
    monitor-exit v1

    goto :goto_7

    :goto_6
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw p0

    :cond_b
    :goto_7
    return-void
.end method


# virtual methods
.method public blacklist dump(ILjava/io/PrintWriter;)V
    .locals 8

    .line 449
    const-string v0, "SemTelephonyDatabaseHelper"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 450
    const-string v0, "select * from telephony_info order by key"

    .line 455
    new-instance v1, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v1, p2, v2}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " TelephonyDatabase["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 457
    iget-object v2, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mDbLoader:[Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;

    aget-object v2, v2, p1

    if-nez v2, :cond_0

    .line 458
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " mDbLoader["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 462
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 463
    iget-object v2, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mDbLoader:[Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;

    aget-object v2, v2, p1

    monitor-enter v2

    const/4 v3, 0x0

    .line 465
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mDbLoader:[Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v4, :cond_1

    .line 467
    :try_start_1
    invoke-virtual {v4, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    :goto_0
    if-eqz v3, :cond_5

    .line 470
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 473
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Date: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "|Key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    .line 475
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x3

    :goto_1
    const/16 v6, 0x8

    if-ge v5, v6, :cond_4

    .line 478
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 479
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    .line 482
    :cond_3
    const-string v7, "|Value"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v5, -0x2

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 484
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 485
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    .line 489
    :cond_5
    :try_start_2
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_6

    .line 492
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_8

    :catch_0
    :cond_6
    :goto_3
    if-eqz v4, :cond_a

    .line 498
    :goto_4
    :try_start_4
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_7

    :catchall_2
    move-exception p0

    move-object v4, v3

    goto :goto_5

    :catch_1
    move-object v4, v3

    goto :goto_6

    .line 489
    :goto_5
    :try_start_5
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_7

    .line 492
    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_2
    :cond_7
    if-eqz v4, :cond_8

    .line 498
    :try_start_7
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 501
    :catch_3
    :cond_8
    :try_start_8
    throw p0

    .line 489
    :catch_4
    :goto_6
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v3, :cond_9

    .line 492
    :try_start_9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catch_5
    :cond_9
    if-eqz v4, :cond_a

    goto :goto_4

    .line 502
    :catch_6
    :cond_a
    :goto_7
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 503
    invoke-virtual {v1}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 504
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->dumpVendor(ILjava/io/PrintWriter;)V

    return-void

    .line 502
    :goto_8
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 585
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    return-void

    .line 590
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->makeCsDiagnosisFile()V

    return-void

    .line 587
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$DatabaseData;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->writeData(Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$DatabaseData;)V

    return-void
.end method

.method public varargs blacklist writeData(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 9

    if-nez p3, :cond_0

    return-void

    .line 288
    :cond_0
    array-length v0, p3

    new-array v0, v0, [Ljava/lang/String;

    .line 290
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v5, p3, v3

    add-int/lit8 v6, v4, 0x1

    .line 291
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x3e8

    if-ge v7, v8, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    :cond_1
    invoke-virtual {v5, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    .line 294
    :cond_2
    new-instance p3, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$DatabaseData;

    invoke-direct {p3, p1, p2, v0}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$DatabaseData;-><init>(ILjava/lang/String;[Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 295
    invoke-virtual {p0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

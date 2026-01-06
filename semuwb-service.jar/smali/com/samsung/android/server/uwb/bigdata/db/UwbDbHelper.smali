.class public Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "UwbDbHelper.java"


# static fields
.field protected static final CHANNEL_NO:Ljava/lang/String; = "channel_no"

.field protected static final COL_STATE_UPDATE_TIME:I = 0x1

.field protected static final COL_STATE_UWB:I = 0x2

.field protected static COL_USAGE_CHANNEL_NO:I = 0x0

.field protected static COL_USAGE_PACKAGE_NAME:I = 0x0

.field protected static COL_USAGE_RANGING_DURATION_TIME:I = 0x0

.field protected static COL_USAGE_SERVICE_TYPE:I = 0x0

.field protected static COL_USAGE_SESSION_ID:I = 0x0

.field protected static COL_USAGE_UPDATE_TIME:I = 0x0

.field private static final CREATE_STATE_TABLE_QUERY:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS uwb_state(ID INTEGER PRIMARY KEY AUTOINCREMENT, update_time BIGINT, current_state INTEGER);"

.field private static final CREATE_USAGE_TABLE_QUERY:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS uwb_usage(ID INTEGER PRIMARY KEY AUTOINCREMENT, session_id BIGINT, package_name TEXT, service_type INTEGER, channel_no INTEGER, ranging_duration_time BIGINT, update_time BIGINT);"

.field private static final DB_PATH:Ljava/lang/String; = "/data/uwb/uwb.db"

.field private static final DB_VERSION:I = 0x1

.field private static INSTANCE:Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper; = null

.field protected static final INVALID_VALUE:I = -0x1

.field protected static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field protected static final RANGING_DURATION_TIME:Ljava/lang/String; = "ranging_duration_time"

.field protected static final SERVICE_TYPE:Ljava/lang/String; = "service_type"

.field protected static final SESSION_ID:Ljava/lang/String; = "session_id"

.field protected static final TABLE_NAME_FOR_UWB_STATE:Ljava/lang/String; = "uwb_state"

.field protected static final TABLE_NAME_FOR_UWB_USAGE:Ljava/lang/String; = "uwb_usage"

.field private static final TAG:Ljava/lang/String; = "UwbDbHelper"

.field protected static final UPDATE_TIME:Ljava/lang/String; = "update_time"

.field protected static final UWB_STATE:Ljava/lang/String; = "current_state"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;->COL_USAGE_SESSION_ID:I

    .line 28
    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;->COL_USAGE_PACKAGE_NAME:I

    .line 29
    const/4 v0, 0x3

    sput v0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;->COL_USAGE_SERVICE_TYPE:I

    .line 30
    const/4 v0, 0x4

    sput v0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;->COL_USAGE_CHANNEL_NO:I

    .line 31
    const/4 v0, 0x5

    sput v0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;->COL_USAGE_RANGING_DURATION_TIME:I

    .line 32
    const/4 v0, 0x6

    sput v0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;->COL_USAGE_UPDATE_TIME:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "/data/uwb/uwb.db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 53
    const-string v0, "UwbDbHelper"

    const-string v1, "BigDataDbHelper is created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "version"    # I

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 66
    const-string v0, "UwbDbHelper"

    const-string v1, "BigDataDbHelper is created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method protected static getInstance(Landroid/content/Context;)Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 57
    sget-object v0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;->INSTANCE:Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;->INSTANCE:Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;

    .line 60
    :cond_0
    sget-object v0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;->INSTANCE:Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 71
    const-string v0, "UwbDbHelper"

    const-string v1, "create Table"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v0, "CREATE TABLE IF NOT EXISTS uwb_state(ID INTEGER PRIMARY KEY AUTOINCREMENT, update_time BIGINT, current_state INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    const-string v0, "CREATE TABLE IF NOT EXISTS uwb_usage(ID INTEGER PRIMARY KEY AUTOINCREMENT, session_id BIGINT, package_name TEXT, service_type INTEGER, channel_no INTEGER, ranging_duration_time BIGINT, update_time BIGINT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 79
    return-void
.end method

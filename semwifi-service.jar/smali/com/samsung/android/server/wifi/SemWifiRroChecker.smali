.class public Lcom/samsung/android/server/wifi/SemWifiRroChecker;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final ALLOWED_RRO_FILE:Ljava/lang/String; = "/data/misc/wifi/rro_list.txt"

.field private static final ALLOWED_RRO_ITEMS:[Ljava/lang/String;

.field private static final ENG_USERDEBUG_MODE:Z = false

.field private static final FREQUENT_INVALID_RRO_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.wifi.resources"

.field private static final REPEAT_TOAST:I = 0x64

.field private static final SAMSUNG_RRO_PACKAGE_PREFIX:Ljava/lang/String; = "com.samsung.android.wifi."

.field private static final TAG:Ljava/lang/String; = "SemWifiRroChecker"

.field private static final TOAST_INTERVAL_MILLIS:I = 0xbb8

.field private static final WARNING_CONTACT_WIFI:Ljava/lang/String; = "\n Invalid RRO LIST \n\n Please Contact to Wi-Fi Team"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiRroChecker;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiRroChecker;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 18

    .line 1
    const-string v16, "com.samsung.android.wifi.largetcpbuffer.resources"

    .line 2
    .line 3
    const-string v17, "com.samsung.android.wifi.resources.qc"

    .line 4
    .line 5
    const-string v1, "com.samsung.android.wifi.resources"

    .line 6
    .line 7
    const-string v2, "com.samsung.android.wifi.p2paware.resources"

    .line 8
    .line 9
    const-string v3, "com.samsung.android.wifi.h2e.resources"

    .line 10
    .line 11
    const-string v4, "com.samsung.android.wifi.softapwpathree.resources"

    .line 12
    .line 13
    const-string v5, "com.samsung.android.wifi.softap.resources"

    .line 14
    .line 15
    const-string v6, "com.samsung.android.wifi.increase.scan.interval.resources"

    .line 16
    .line 17
    const-string v7, "com.samsung.android.wifi.decrease.scan.interval.resources"

    .line 18
    .line 19
    const-string v8, "com.samsung.android.wifi.saeupgradeoffload.resources"

    .line 20
    .line 21
    const-string v9, "com.samsung.android.wifi.resources.wifilock"

    .line 22
    .line 23
    const-string v10, "com.samsung.android.wifi.softapwpathree.resources"

    .line 24
    .line 25
    const-string v11, "com.samsung.android.wifi.softap.resources"

    .line 26
    .line 27
    const-string v12, "com.samsung.android.wifi.softapsixghz.resources"

    .line 28
    .line 29
    const-string v13, "com.samsung.android.wifi.softapdualap.resources"

    .line 30
    .line 31
    const-string v14, "com.samsung.android.wifi.softapowe.resources"

    .line 32
    .line 33
    const-string v15, "com.samsung.android.wifi.softapqc.resources"

    .line 34
    .line 35
    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiRroChecker;->ALLOWED_RRO_ITEMS:[Ljava/lang/String;

    .line 40
    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "SemWifiRroChecker"

    .line 5
    .line 6
    const-string v1, "create SemWifiRroChecker  ENG_USERDEBUG_MODE: false"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiRroChecker;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method

.method private checkUnauthorizedRroInternal()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string p0, "SemWifiRroChecker"

    .line 2
    .line 3
    const-string v0, "startCheckRro ENG_USERDEBUG_MODE : false"

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance p0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method private readAuthorizedRroListFromFile()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    .line 7
    .line 8
    new-instance v1, Ljava/io/FileInputStream;

    .line 9
    .line 10
    const-string v2, "/data/misc/wifi/rro_list.txt"

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    .line 24
    .line 25
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v2

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 38
    .line 39
    .line 40
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 41
    .line 42
    .line 43
    return-object p0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    goto :goto_5

    .line 46
    :catch_1
    move-exception v0

    .line 47
    goto :goto_6

    .line 48
    :catchall_1
    move-exception v1

    .line 49
    goto :goto_3

    .line 50
    :goto_1
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :catchall_2
    move-exception v1

    .line 55
    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    :goto_2
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 59
    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 60
    .line 61
    .line 62
    goto :goto_4

    .line 63
    :catchall_3
    move-exception v0

    .line 64
    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    :goto_4
    throw v1
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 68
    :goto_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    goto :goto_7

    .line 72
    :goto_6
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 73
    .line 74
    .line 75
    :goto_7
    return-object p0
.end method

.method private warnIfRroListContainsUnauthorizedItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/String;

    .line 21
    .line 22
    const-string v2, "\n"

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string p1, "\n\n Invalid RRO LIST \n\n Please Contact to Wi-Fi Team"

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/16 p1, 0x64

    .line 37
    .line 38
    filled-new-array {p1}, [I

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-instance v1, Landroid/os/Handler;

    .line 43
    .line 44
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 49
    .line 50
    .line 51
    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiRroChecker$1;

    .line 52
    .line 53
    invoke-direct {v2, p0, v0, p1, v1}, Lcom/samsung/android/server/wifi/SemWifiRroChecker$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiRroChecker;Ljava/lang/StringBuilder;[ILandroid/os/Handler;)V

    .line 54
    .line 55
    .line 56
    const-wide/16 p0, 0x0

    .line 57
    .line 58
    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method private writeAuthorizedRroListToFile()V
    .locals 4

    .line 1
    new-instance p0, Ljava/io/File;

    .line 2
    .line 3
    const-string v0, "/data/misc/wifi/rro_list.txt"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Ljava/io/File;->setExecutable(Z)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0, v0}, Ljava/io/File;->setReadable(Z)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {p0, v0}, Ljava/io/File;->setWritable(Z)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const-string v3, "SemWifiRroChecker"

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const-string v0, "Permissions changed using File ALLOWED_RRO_FILE."

    .line 30
    .line 31
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string v0, "Failed to change permissions using ALLOWED_RRO_FILE."

    .line 36
    .line 37
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :goto_0
    :try_start_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    .line 41
    .line 42
    new-instance v1, Ljava/io/FileOutputStream;

    .line 43
    .line 44
    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 45
    .line 46
    .line 47
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 48
    .line 49
    invoke-direct {v0, v1, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    :try_start_1
    sget-object p0, Lcom/samsung/android/server/wifi/SemWifiRroChecker;->ALLOWED_RRO_ITEMS:[Ljava/lang/String;

    .line 53
    .line 54
    array-length v1, p0

    .line 55
    const/4 v2, 0x0

    .line 56
    :goto_1
    if-ge v2, v1, :cond_1

    .line 57
    .line 58
    aget-object v3, p0, v2

    .line 59
    .line 60
    invoke-virtual {v0, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v3, "\n"

    .line 64
    .line 65
    invoke-virtual {v0, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .line 67
    .line 68
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_2

    .line 73
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :catchall_1
    move-exception v0

    .line 82
    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    :goto_3
    throw p0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 86
    :catch_0
    move-exception p0

    .line 87
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 88
    .line 89
    .line 90
    goto :goto_4

    .line 91
    :catch_1
    move-exception p0

    .line 92
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 93
    .line 94
    .line 95
    :goto_4
    return-void
.end method


# virtual methods
.method public checkAndGetUnauthorizedRro()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiRroChecker;->checkUnauthorizedRroInternal()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiRroChecker;->warnIfRroListContainsUnauthorizedItems(Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-object v0
.end method

.method public checkAndGetUnauthorizedRroWithoutToast()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiRroChecker;->checkUnauthorizedRroInternal()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public checkUnauthorizedRro()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiRroChecker;->checkUnauthorizedRroInternal()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiRroChecker;->warnIfRroListContainsUnauthorizedItems(Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public checkUnauthorizedRroWithoutToast()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiRroChecker;->checkUnauthorizedRroInternal()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

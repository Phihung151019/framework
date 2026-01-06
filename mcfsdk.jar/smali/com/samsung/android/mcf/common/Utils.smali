.class public Lcom/samsung/android/mcf/common/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final DEBUG:Z

.field private static final DEVICE_NAME:Ljava/lang/String; = "device_name"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.mcfserver"

.field static final SERVER_PERMISSION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Utils"


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 37
    const-string v0, "ro.product_ship"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    sput-boolean v1, Lcom/samsung/android/mcf/common/Utils;->DEBUG:Z

    .line 42
    const-string v7, "android.permission.ACCESS_BACKGROUND_LOCATION"

    const-string v8, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    const-string v3, "android.permission.BLUETOOTH_SCAN"

    const-string v4, "android.permission.BLUETOOTH_ADVERTISE"

    const-string v5, "android.permission.READ_CONTACTS"

    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mcf/common/Utils;->SERVER_PERMISSION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .line 82
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 84
    .local v0, "hexArray":[C
    if-nez p0, :cond_0

    .line 85
    const-string v1, ""

    return-object v1

    .line 88
    :cond_0
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 89
    .local v1, "hexChars":[C
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 90
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 91
    .local v3, "v":I
    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x4

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 92
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v3, 0xf

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 89
    .end local v3    # "v":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    .end local v2    # "j":I
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static byteArrayToShort([B)S
    .locals 5
    .param p0, "bytes"    # [B

    .line 105
    const/4 v0, 0x2

    .line 106
    .local v0, "size":I
    const/4 v1, 0x2

    new-array v2, v1, [B

    .line 107
    .local v2, "newBytes":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 108
    array-length v4, p0

    add-int/2addr v4, v3

    if-ge v4, v1, :cond_0

    .line 109
    const/4 v4, 0x0

    aput-byte v4, v2, v3

    goto :goto_1

    .line 111
    :cond_0
    array-length v4, p0

    add-int/2addr v4, v3

    sub-int/2addr v4, v1

    aget-byte v4, p0, v4

    aput-byte v4, v2, v3

    .line 107
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    .end local v3    # "i":I
    :cond_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 115
    .local v1, "buff":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 116
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    return v3
.end method

.method private static checkAppUWBPermissionGranted(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 282
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    const-string v0, "android.permission.UWB_RANGING"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    const-string v0, "checkAppUWBPermissionGranted"

    const-string v1, "Need to check app permission"

    const-string v2, "Utils"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v0, 0x0

    return v0

    .line 284
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static checkMcfserverUWBPermissionGranted(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 291
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 292
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    const-string v2, "checkMcfserverUWBPermissionGranted"

    const-string v3, "Utils"

    if-nez v0, :cond_0

    .line 293
    const-string v4, "null packageManager"

    invoke-static {v3, v2, v4}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return v1

    .line 302
    :cond_0
    invoke-static {}, Lcom/samsung/android/mcf/common/VersionUtil;->getBuildSDKVersion()I

    move-result v4

    const/16 v5, 0x22

    const/4 v6, 0x1

    const-string v7, "com.samsung.android.mcfserver"

    if-ge v4, v5, :cond_1

    .line 303
    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v4, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 304
    return v6

    .line 307
    :cond_1
    const-string v4, "android.permission.UWB_RANGING"

    invoke-virtual {v0, v4, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 308
    const-string v4, "android.permission.UWB_PRIVILEGED"

    invoke-virtual {v0, v4, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 309
    return v6

    .line 312
    :cond_2
    const-string v4, "Need to check MCFServer permission"

    invoke-static {v3, v2, v4}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    return v1
.end method

.method public static createBundle()Landroid/os/Bundle;
    .locals 1

    .line 336
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public static createPersistableBundle()Landroid/os/PersistableBundle;
    .locals 1

    .line 341
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    return-object v0
.end method

.method public static getBleServiceId(IZZ)I
    .locals 3
    .param p0, "appsId"    # I
    .param p1, "general"    # Z
    .param p2, "extend"    # Z

    .line 142
    const/16 v0, 0x10

    if-le p0, v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/mcf/common/Utils;->getEnableBitCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 143
    return p0

    .line 145
    :cond_0
    const/4 v0, 0x0

    .line 146
    .local v0, "generalService":I
    const/4 v1, 0x0

    .line 147
    .local v1, "extendService":I
    if-eqz p1, :cond_1

    .line 148
    move v0, p0

    .line 150
    :cond_1
    if-eqz p2, :cond_2

    .line 151
    move v1, p0

    .line 154
    :cond_2
    shl-int/lit8 v2, v0, 0x10

    add-int/2addr v2, v1

    return v2
.end method

.method public static getEnableBitCount(I)I
    .locals 2
    .param p0, "value"    # I

    .line 127
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eqz p0, :cond_0

    .line 128
    add-int/lit8 v1, p0, -0x1

    and-int/2addr p0, v1

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    return v0
.end method

.method public static getMcfVersionCode(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 199
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.mcfserver"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Utils"

    const-string v3, "getMcfVersionCode"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 228
    nop

    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "systemDeviceName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 231
    return-object v0

    .line 234
    :cond_0
    nop

    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "globalDeviceName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 237
    return-object v1

    .line 240
    :cond_1
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, "Samsung Mobile"

    goto :goto_0

    :cond_2
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_0
    return-object v2
.end method

.method public static getServerDeniedPermissions(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/mcf/common/Utils;->SERVER_PERMISSION:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 320
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 321
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const-string v2, "getServerDeniedPermissions"

    const-string v3, "Utils"

    if-nez v1, :cond_0

    .line 322
    const-string v4, "null packageManager"

    invoke-static {v3, v2, v4}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 324
    :cond_0
    sget-object v4, Lcom/samsung/android/mcf/common/Utils;->SERVER_PERMISSION:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 325
    .local v7, "permission":Ljava/lang/String;
    const-string v8, "com.samsung.android.mcfserver"

    invoke-virtual {v1, v7, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_1

    .line 326
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " denied"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v2, v8}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    .end local v7    # "permission":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 331
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static hasNoPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .line 244
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 245
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    const-string v2, "hasNoPermission"

    const-string v3, "Utils"

    if-nez v0, :cond_0

    .line 246
    const-string v4, "null packageManager"

    invoke-static {v3, v2, v4}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return v1

    .line 250
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    const-string v5, " permission"

    if-eqz v4, :cond_1

    .line 251
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Need "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return v1

    .line 255
    :cond_1
    const-string v4, "com.samsung.android.mcfserver"

    invoke-virtual {v0, p1, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2

    .line 256
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MCFServer needs "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return v1

    .line 260
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public static hasUWB(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 214
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-nez v0, :cond_0

    .line 215
    const/4 v1, 0x0

    return v1

    .line 217
    :cond_0
    const-string v1, "samsung.hardware.uwb"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static hasUWBPermission(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 264
    invoke-static {p0}, Lcom/samsung/android/mcf/common/Utils;->checkAppUWBPermissionGranted(Landroid/content/Context;)Z

    move-result v0

    .line 265
    .local v0, "appUWBPermissionGranted":Z
    invoke-static {p0}, Lcom/samsung/android/mcf/common/Utils;->checkMcfserverUWBPermissionGranted(Landroid/content/Context;)Z

    move-result v1

    .line 266
    .local v1, "mcfserverUWBPermissionGranted":Z
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 267
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Utils"

    const-string v4, "hasUWBPermission"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const/4 v2, 0x0

    return v2
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .param p0, "stringByte"    # Ljava/lang/String;

    .line 60
    if-nez p0, :cond_0

    .line 61
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    return-object v0

    .line 64
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 65
    .local v0, "len":I
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 66
    .local v1, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 67
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 68
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 66
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 71
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public static isMcfInstalled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 183
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.android.mcfserver"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Utils"

    const-string v4, "isMcfInstalled"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return v0
.end method

.method public static throwOnMainThread(Ljava/lang/Exception;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Exception;",
            ">(TT;)V"
        }
    .end annotation

    .line 165
    .local p0, "exception":Ljava/lang/Exception;, "TT;"
    sget-boolean v0, Lcom/samsung/android/mcf/common/Utils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 166
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    .line 167
    .local v0, "mainThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 168
    .end local v0    # "mainThread":Ljava/lang/Thread;
    goto :goto_0

    .line 169
    :cond_0
    const-string v0, "throwOnMainThread"

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Utils"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    :goto_0
    return-void
.end method

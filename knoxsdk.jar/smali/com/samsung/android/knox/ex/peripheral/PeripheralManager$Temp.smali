.class public Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$Temp;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Temp"
.end annotation


# static fields
.field public static final greylist ACTION_REQUEST_VERSION:Ljava/lang/String; = "com.samsung.android.knox.ex.peripheral.TEMP_ACTION_REQUEST_VERSION"

.field public static final greylist ACTION_REQUEST_VERSION_RELAY:Ljava/lang/String; = "com.samsung.android.knox.ex.peripheral.TEMP_ACTION_REQUEST_VERSION_RELAY"

.field public static final greylist ACTION_RESPONSE_VERSION:Ljava/lang/String; = "com.samsung.android.knox.ex.peripheral.TEMP_ACTION_RESPONSE_VERSION"

.field public static final greylist ACTION_RESPONSE_VERSION_RELAY:Ljava/lang/String; = "com.samsung.android.knox.ex.peripheral.TEMP_ACTION_RESPONSE_VERSION_RELAY"

.field public static final greylist EXTRA_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final greylist EXTRA_PACKAGE_VERSION:Ljava/lang/String; = "packageVersion"

.field public static final greylist EXTRA_SDK_VERSION:Ljava/lang/String; = "sdkVersion"


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "PeripheralSDK-1.0.2.02"

    return-object v0
.end method

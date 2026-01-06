.class public Lcom/google/uwb/support/oemextension/AdvertisePointedTarget;
.super Ljava/lang/Object;
.source "AdvertisePointedTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/oemextension/AdvertisePointedTarget$Builder;
    }
.end annotation


# static fields
.field public static final ADVERTISE_POINTING_RESULT:Ljava/lang/String; = "advertise_pointing_result"

.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_CURRENT:I = 0x1

.field public static final KEY_BUNDLE_VERSION:Ljava/lang/String; = "bundle_version"

.field public static final MAC_ADDRESS:Ljava/lang/String; = "mac_address"


# instance fields
.field private final mAdvertisePointingResult:Z

.field private final mMacAddress:Landroid/uwb/UwbAddress;


# direct methods
.method public constructor <init>(Landroid/uwb/UwbAddress;Z)V
    .locals 0
    .param p1, "macAddress"    # Landroid/uwb/UwbAddress;
    .param p2, "advertisePointingResult"    # Z

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/uwb/support/oemextension/AdvertisePointedTarget;->mMacAddress:Landroid/uwb/UwbAddress;

    .line 48
    iput-boolean p2, p0, Lcom/google/uwb/support/oemextension/AdvertisePointedTarget;->mAdvertisePointingResult:Z

    .line 49
    return-void
.end method

.method private static byteArrayToIntArray([B)[I
    .locals 3
    .param p0, "bytes"    # [B

    .line 65
    if-nez p0, :cond_0

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_0
    array-length v0, p0

    new-array v0, v0, [I

    .line 69
    .local v0, "values":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 70
    aget-byte v2, p0, v1

    aput v2, v0, v1

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/oemextension/AdvertisePointedTarget;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 96
    const-string v0, "bundle_version"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/oemextension/AdvertisePointedTarget;->parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/oemextension/AdvertisePointedTarget;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getBundleVersion()I
    .locals 1

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method private static intArrayToByteArray([I)[B
    .locals 3
    .param p0, "values"    # [I

    .line 77
    if-nez p0, :cond_0

    .line 78
    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_0
    array-length v0, p0

    new-array v0, v0, [B

    .line 81
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 82
    aget v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private static parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/oemextension/AdvertisePointedTarget;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 105
    new-instance v0, Lcom/google/uwb/support/oemextension/AdvertisePointedTarget$Builder;

    invoke-direct {v0}, Lcom/google/uwb/support/oemextension/AdvertisePointedTarget$Builder;-><init>()V

    .line 108
    const-string v1, "mac_address"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    invoke-static {v1}, Lcom/google/uwb/support/oemextension/AdvertisePointedTarget;->intArrayToByteArray([I)[B

    move-result-object v1

    .line 107
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 106
    invoke-virtual {v0, v1}, Lcom/google/uwb/support/oemextension/AdvertisePointedTarget$Builder;->setMacAddress([B)Lcom/google/uwb/support/oemextension/AdvertisePointedTarget$Builder;

    move-result-object v0

    .line 109
    const-string v1, "advertise_pointing_result"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/oemextension/AdvertisePointedTarget$Builder;->setAdvertisePointingResult(Z)Lcom/google/uwb/support/oemextension/AdvertisePointedTarget$Builder;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/google/uwb/support/oemextension/AdvertisePointedTarget$Builder;->build()Lcom/google/uwb/support/oemextension/AdvertisePointedTarget;

    move-result-object v0

    .line 105
    return-object v0
.end method


# virtual methods
.method public getMacAddress()Landroid/uwb/UwbAddress;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/uwb/support/oemextension/AdvertisePointedTarget;->mMacAddress:Landroid/uwb/UwbAddress;

    return-object v0
.end method

.method public isAdvertisePointingResult()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/google/uwb/support/oemextension/AdvertisePointedTarget;->mAdvertisePointingResult:Z

    return v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 3

    .line 88
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 89
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string v1, "bundle_version"

    invoke-static {}, Lcom/google/uwb/support/oemextension/AdvertisePointedTarget;->getBundleVersion()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 90
    iget-object v1, p0, Lcom/google/uwb/support/oemextension/AdvertisePointedTarget;->mMacAddress:Landroid/uwb/UwbAddress;

    invoke-virtual {v1}, Landroid/uwb/UwbAddress;->toBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/uwb/support/oemextension/AdvertisePointedTarget;->byteArrayToIntArray([B)[I

    move-result-object v1

    const-string v2, "mac_address"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 91
    const-string v1, "advertise_pointing_result"

    iget-boolean v2, p0, Lcom/google/uwb/support/oemextension/AdvertisePointedTarget;->mAdvertisePointingResult:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 92
    return-object v0
.end method

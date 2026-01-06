.class public abstract Lcom/google/uwb/support/base/Params;
.super Ljava/lang/Object;
.source "Params.java"


# static fields
.field protected static final BUNDLE_VERSION_UNKNOWN:I = -0x1

.field private static final KEY_BUNDLE_VERSION:Ljava/lang/String; = "bundle_version"

.field protected static final KEY_PROTOCOL_NAME:Ljava/lang/String; = "protocol_name"

.field protected static final PROTOCOL_NAME_UNKNOWN:Ljava/lang/String; = "unknown"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBundleVersion(Landroid/os/PersistableBundle;)I
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 57
    const-string v0, "bundle_version"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isProtocol(Landroid/os/PersistableBundle;Ljava/lang/String;)Z
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;
    .param p1, "protocol"    # Ljava/lang/String;

    .line 61
    const-string v0, "protocol_name"

    const-string v1, "unknown"

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private toBytes()[B
    .locals 3

    .line 45
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 46
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-virtual {p0}, Lcom/google/uwb/support/base/Params;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 47
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 48
    .local v1, "bytes":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 49
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 71
    instance-of v0, p1, Lcom/google/uwb/support/base/Params;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/uwb/support/base/Params;->toBytes()[B

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/google/uwb/support/base/Params;

    invoke-direct {v1}, Lcom/google/uwb/support/base/Params;->toBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract getBundleVersion()I
.end method

.method public abstract getProtocolName()Ljava/lang/String;
.end method

.method public hashCode()I
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/google/uwb/support/base/Params;->toBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 3

    .line 38
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 39
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string v1, "bundle_version"

    invoke-virtual {p0}, Lcom/google/uwb/support/base/Params;->getBundleVersion()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 40
    const-string v1, "protocol_name"

    invoke-virtual {p0}, Lcom/google/uwb/support/base/Params;->getProtocolName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-object v0
.end method

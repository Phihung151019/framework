.class public Lcom/google/uwb/support/oemextension/DeviceStatus;
.super Ljava/lang/Object;
.source "DeviceStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/oemextension/DeviceStatus$Builder;
    }
.end annotation


# static fields
.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_CURRENT:I = 0x1

.field public static final CHIP_ID:Ljava/lang/String; = "chip_id"

.field public static final DEVICE_STATE:Ljava/lang/String; = "device_state"

.field public static final KEY_BUNDLE_VERSION:Ljava/lang/String; = "bundle_version"


# instance fields
.field private final mChipId:Ljava/lang/String;

.field private final mDeviceState:I


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "deviceState"    # I
    .param p2, "chipId"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/google/uwb/support/oemextension/DeviceStatus;->mDeviceState:I

    .line 54
    iput-object p2, p0, Lcom/google/uwb/support/oemextension/DeviceStatus;->mChipId:Ljava/lang/String;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Lcom/google/uwb/support/oemextension/DeviceStatus$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/google/uwb/support/oemextension/DeviceStatus$1;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/uwb/support/oemextension/DeviceStatus;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/oemextension/DeviceStatus;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 66
    const-string v0, "bundle_version"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/oemextension/DeviceStatus;->parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/oemextension/DeviceStatus;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getBundleVersion()I
    .locals 1

    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method private static parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/oemextension/DeviceStatus;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 75
    new-instance v0, Lcom/google/uwb/support/oemextension/DeviceStatus$Builder;

    invoke-direct {v0}, Lcom/google/uwb/support/oemextension/DeviceStatus$Builder;-><init>()V

    .line 76
    const-string v1, "device_state"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/oemextension/DeviceStatus$Builder;->setDeviceState(I)Lcom/google/uwb/support/oemextension/DeviceStatus$Builder;

    move-result-object v0

    .line 77
    const-string v1, "chip_id"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/oemextension/DeviceStatus$Builder;->setChipId(Ljava/lang/String;)Lcom/google/uwb/support/oemextension/DeviceStatus$Builder;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/google/uwb/support/oemextension/DeviceStatus$Builder;->build()Lcom/google/uwb/support/oemextension/DeviceStatus;

    move-result-object v0

    .line 75
    return-object v0
.end method


# virtual methods
.method public getChipId()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/uwb/support/oemextension/DeviceStatus;->mChipId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceState()J
    .locals 2

    .line 45
    iget v0, p0, Lcom/google/uwb/support/oemextension/DeviceStatus;->mDeviceState:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 3

    .line 58
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 59
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string v1, "bundle_version"

    invoke-static {}, Lcom/google/uwb/support/oemextension/DeviceStatus;->getBundleVersion()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 60
    const-string v1, "device_state"

    iget v2, p0, Lcom/google/uwb/support/oemextension/DeviceStatus;->mDeviceState:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 61
    const-string v1, "chip_id"

    iget-object v2, p0, Lcom/google/uwb/support/oemextension/DeviceStatus;->mChipId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-object v0
.end method
